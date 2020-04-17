cask 'nucc' do
  version '0.3.8'
  sha256 "7d19064153c572c179f5b1777689410148333274720449e4d1b34bee799ec937"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.8.tar.gz"
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
                      sudo:       false,
                    }

end
