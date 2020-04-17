cask 'nucc' do
  version '0.3.3'
  sha256 "03ff3d29629bc38bec1c41be71a710cb090f8f9b058927ed34c0c1dacd4ea4e0"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.3.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

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
