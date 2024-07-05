#_████████████████████████████████████████████████████████████████████████████
:_████████████████████████████████████████████████████████████████████████████
"_█ ┌────────────────────────┐ ███████████████████████████████████████████████"
%{█ │ DEADHEAD Script Loader │ ███████████████████████████████████████████████}
#_█ └────────────────────────┘ ███████████████████████████████████████████████
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"
%{┌──────────────────────────────────────────────────────────────────────────┐
  │                                                                          │
  │   Automatically loads scripts from the "Scripts" folder in project root. │
  │   This lets you use external IDEs and tools and manage scripts easier.   │
  │                                                                          │
  │   Modify MANIFEST const inside module DeadHead_ScriptLoader below.       │
  │   Alternatively, put the module definition with the MANIFEST declaration │
  │   into a "Scripts/@manifest.rb" if you don't want to ever touch VX Ace's │
  │   Script Editor again.                                                   │
  │                                                                          │
  │   Entry's key is the script name, matching filename, sans ".rb".         │
  │   "dir" must be a string with the directory path, excluding trailing     │
  │   slash and the script name.                                             │
  │   "load?" must be a truthy value or a proc that resolves to a truthy     │
  │   value for the script to be loaded.                                     │
  │                                                                          │
  └──────────────────────────────────────────────────────────────────────────┘}
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"
%{████████████████████████████████████████████████████████████████████████████}
#_████████████████████████████████████████████████████████████████████████████
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"
%{████████████████████████████████████████████████████████████████████████████}
#_████████████████████████████████████████████████████████████████████████████
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"
%{████████████████████████████████████████████████████████████████████████████}
#_████████████████████████████████████████████████████████████████████████████
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"
%{████████████████████████████████████████████████████████████████████████████}
#_███████████████████████████████ https://github.com/MaxwellWellman/deadhead █
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"
%{████████████████████████████████████████████████████████████████████████████}

BEGIN {
  module DeadHead_ScriptLoader

    MANIFEST = {

      "script-name" => {
        dir: "directory-inside-Scripts",
        load?: true
      }

    }

  end
}
"_████████████████████████████████████████████████████████████████████████████"
%{████████████████████████████████████████████████████████████████████████████}
#_██████████████████████████ END OF EDITABLE REGION ██████████████████████████
:_████████████████████████████████████████████████████████████████████████████
"_████████████████████████████████████████████████████████████████████████████"

BEGIN {
  module DeadHead_DependencyManager

    HttpOpen = Win32API.new(
      'winhttp', 'WinHttpOpen', "PIPPI", 'I'
    )
    HttpConnect = Win32API.new(
      'winhttp', 'WinHttpConnect', "PPII", 'I'
    )
    HttpOpenRequest = Win32API.new(
      'winhttp', 'WinHttpOpenRequest', "PPPPPII", 'I'
    )
    HttpSendRequest = Win32API.new(
      'winhttp', 'WinHttpSendRequest', "PIIIIII", 'I'
    )
    HttpReceiveResponse = Win32API.new(
      'winhttp', 'WinHttpReceiveResponse', "PP", 'I'
    )
    HttpQueryDataAvailable = Win32API.new(
      'winhttp', 'WinHttpQueryDataAvailable', "PI", "I"
    )
    HttpReadData = Win32API.new(
      'winhttp', 'WinHttpReadData', "PPIP", 'I'
    )
    URL = "https://github.com/MaxwellWellman/deadhead"
    HOST = "raw.githubusercontent.com"
    PATH = "MaxwellWellman/deadhead/master"

    String.class_eval do

      def to_ws
        wstr = ""
        (0..self.size).each do |i|
          wstr = "#{wstr}#{self[i, 1]}\0"
        end
        "#{wstr}\0"
      end

      def to_utf8
        self.encode(
          'UTF-8', invalid: :replace, undef: :replace, replace: '?'
        )
      end
    end

    class << self

      def resolve(name)
        download_dep(name)
        require_dep(name)
      end

      private

      def download_code(script_path)
        pwszUserAgent = ''
        pwszProxyName = ''
        pwszProxyBypass = ''
        httpOpen = HttpOpen.call(
          pwszUserAgent, 0, pwszProxyName, pwszProxyBypass, 0
        )
        httpConnect = HttpConnect.call(httpOpen, HOST.to_ws, 80, 0)
        httpOpenR = HttpOpenRequest.call(
          httpConnect, nil, "#{PATH}/#{script_path}.rb".to_ws, '', '', 0, 0
        )
        # puts("URL: #{HOST}/#{PATH}/#{script_path}.rb")
        httpSendR = HttpSendRequest.call(httpOpenR, 0, 0, 0, 0, 0, 0)
        httpReceiveR = HttpReceiveResponse.call(httpOpenR, nil)
        received = 0
        httpAvailable = HttpQueryDataAvailable.call(httpOpenR, received)
        ali = ' ' * 524288
        n = 0
        httpRead = HttpReadData.call(
          httpOpenR, ali, 524288, o = [n].pack('i!')
        )
        n = o.unpack('i!')[0]
        ali[0, n].to_utf8
      rescue Exception => err
        puts("error when downloading\n#{err}")
        puts(err.to_s.to_utf8)
        ""
      end

      def write_to_file(dir_path, filename, str)
        Dir.mkdir(dir_path) unless Dir.exist?(dir_path)
        File.open(File.join(dir_path, filename), 'w') do |file|
          file.write("#!/bin/env ruby\n# encoding: utf-8\n#{str}")
        end
      end

      def download_dep(name)
        code = download_code(name)
        write_to_file('Scripts', "#{name}.rb", code)
      end

      def require_dep(name)
        begin
          require("Scripts/#{name}.rb")
        rescue Exception => err
          puts("error when requiring #{name}")
          puts(err.to_s.to_utf8)
        end

        return if name == "vxace-default"
        return if ($imported ||= {})[name.gsub("-", "_").to_sym]

        msg = "#{name}.rb is required and was not found.\nPlease "
        msg.concat("download it from the DEADHEAD GitHub repository.")
        puts(msg)
        msgbox(msg)
        system("start #{URL}")
        exit(1)
      end

    end

  end

  DeadHead_DependencyManager.resolve('deadhead-core')
}

BEGIN {

  class << DeadHead_ScriptLoader

    def init
      DeadHead_DependencyManager.resolve('vxace-default')
      require('Scripts/@manifest.rb') if File.exist?('Scripts/@manifest.rb')
      DeadHead_ScriptLoader::MANIFEST.freeze.each_pair do |name, script|
        load_condition = script[:load?]
        load_condition = if load_condition.is_a?(Proc)
                           load_condition[]
                         else
                           load_condition
                         end
        if load_condition
          require("Scripts/#{script[:dir]}/#{name}")
        end
      end
    end

  end

  DeadHead_ScriptLoader.init

  rgss_main do
    SceneManager.run
  end
}
