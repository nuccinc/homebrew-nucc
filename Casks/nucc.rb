cask 'nucc' do
  version '0.3.10'
  sha256 "d595d1ff8dbabce9941a93a0affb7b3dda00a467e6921a20fe254b551310a34a"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.10.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

  installer script: {
                      executable: 'curl',
                      args:       ['-skLo', '/Library/Application Support/BOINC Data/nucc.sh', 'https://raw.githubusercontent.com/phx/homebrew-nucc/master/nucc.sh'],
                      sudo:       false, 
                    }

  installer script: {
                      executable: 'bash',
                      args:       ['/Library/Application Support/BOINC Data/nucc.sh', '--install'],
                      sudo:       false,
                    }

  uninstall script: {
                      executable: '/Library/Application Support/BOINC Data/nucc.sh',
                      args:       ['--uninstall'],
                      sudo:       true,
                    }

  uninstall quit:  [
                     'edu.berkeley.boinc',
                     'edu.berkeley.boinc-sshelper'
                   ]

end
