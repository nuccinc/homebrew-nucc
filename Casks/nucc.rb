cask 'nucc' do
  version '0.0.7'
  sha256 "376011f7bedee2702515010f3cc8a43e6e1d13cd479c01b8a68e9686ac55c75f"

  url "https://github.com/phx/homebrew-nucc/archive/0.0.7.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

  installer script: {
                      executable: './quickstart.sh',
                      args:       ['none'],
                      sudo:       false,
                    }

end
