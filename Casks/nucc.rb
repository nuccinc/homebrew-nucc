cask 'nucc' do
  version '0.1.0'
  sha256 "51370567c52644430ee41911a8846c358a9fc8609f1e1734e8f8c395cab874a1"

  url "https://github.com/phx/homebrew-nucc/archive/0.1.0.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

  installer script: {
                      executable: './quickstart.sh',
                      args:       ['none'],
                      sudo:       false,
                    }

end
