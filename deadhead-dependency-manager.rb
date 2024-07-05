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
    end

    class << self
      
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
        httpSendR = HttpSendRequest.call(httpOpenR, 0, 0, 0, 0, 0, 0)
        httpReceiveR = HttpReceiveResponse.call(httpOpenR, nil)
        received = 0
        httpAvailable = HttpQueryDataAvailable.call(httpOpenR, received)
        ali = ' ' * 16384
        n = 0
        httpRead = HttpReadData.call(
          httpOpenR, ali, 16384, o = [n].pack('i!')
        )
        n = o.unpack('i!')[0]
        ali[0, n].encode(
          'UTF-8', invalid: :replace, undef: :replace, replace: '?'
        )
      rescue => err
        puts(err)
        ""
      end

      def write_to_file(dir_path, filename, str)
        Dir.mkdir(dir_path) unless Dir.exist?(dir_path)
        File.open(File.join(dir_path, filename), 'w') do |file|
          file.write(str)
        end
      end

      def download_dep(name)
        code = download_code(name)
        begin
          eval(code)
          write_to_file('Scripts', "#{name}.rb", code)
        rescue => err
          puts(err)
          if File.exist?("Scripts/#{name}.rb")
            code = File.read("Scripts/#{name}.rb")
            begin
              eval(code)
            rescue => err
              puts(err)
            end
          end
        end

        return if ($imported ||= {})[name]

        msg = "#{name}.rb is required and was not found.\nPlease"
        msg.concat("download it from the DEADHEAD GitHub repository.")
        system("start #{URL}")
        puts(msg)
        raise(msg)
      end

    end

  end

  DeadHead_DependencyManager.download_dep('deadhead_core')
}
