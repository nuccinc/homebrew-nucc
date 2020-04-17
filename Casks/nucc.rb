cask 'nucc' do
  version '0.3.9'
  sha256 "0958288e8218ec46f35a8e2925d6fffc0a9a32393770f6639a5b8f970d7d5a5b"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.9.tar.gz"
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
