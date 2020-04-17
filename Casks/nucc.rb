cask 'nucc' do
  version '0.3.0'
  sha256 "71b47d019277cfe1c464808cd1c0593ac3e0d47486224ecae3ef8b06506eac46"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.0.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

  installer script: {
                      executable: './nucc.sh',
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
