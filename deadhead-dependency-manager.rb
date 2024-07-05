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
