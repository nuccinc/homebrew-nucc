cask 'nucc' do
  version '0.3.4'
  sha256 "d8e97fecfc2af992e6b5c7600a0abe1f92eedc29ce6ca23ca3c1130c95abbd22"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.4.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

  installer script: {
                      executable: 'curl',
                      args:       ['-skLo', "#{staged_path}/nucc.sh", 'https://raw.githubusercontent.com/phx/homebrew-nucc/master/nucc.sh'],
                      sudo:       false, 
                    }

  installer script: {
                      executable: 'chmod',
                      args:       ['+x', "#{staged_path}/nucc.sh"]
                      sudo:       false,
                    }

  installer script: {
                      executable: "#{staged_path}/nucc.sh",
                      args:       ['--install'],
                      sudo:       false,
                    }

  uninstall quit: [
                    'edu.berkeley.boinc',
                    'edu.berkeley.boinc-sshelper'
                  ]

  uninstall script: {
                      executable: '/Library/Application Support/BOINC Data/nucc.sh',
                      args:       ['--uninstall'],
                      sudo:       true,
                    }

end
