cask 'nucc' do
  version '0.3.11'
  sha256 "4b231645f9a5e7269a309fc0c9b356129b8d393159af0a2a011c664ce93c30bd"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.11.tar.gz"
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
