cask 'nucc' do
  version '0.3.7'
  sha256 "3d5a1a2d8afac8a2e90531cb9a4226a61386b3c7b2cf57503a6d8413646c64d0"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.7.tar.gz"
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

end
