cask 'nucc' do
  version '0.2.0'
  sha256 "708f51721839eff4007d7c0d63fbdb8e9e89130955f7eb07a124a60239560b26"

  url "https://github.com/phx/homebrew-nucc/archive/0.2.0.tar.gz"
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
