cask 'nucc' do
  version '0.0.5'
  sha256 :nocheck

  url "https://github.com/phx/homebrew-nucc/archive/0.0.5.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  auto_updates: true
  depends_on boinc: ">= 7.0.0"

  installer script: {
                      executable: './quickstart.sh',
                      args:       ['none'],
                      sudo:       false,
                    }

end
