cask 'nucc' do
  version '0.3.1'
  sha256 "78389993c138c0504b34cf36865f52ae982df6b17faf4147d1afd30db26e1a65"

  url "https://github.com/phx/homebrew-nucc/archive/0.3.1.tar.gz"
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
