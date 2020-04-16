cask 'nucc' do
  version '0.0.6'
  sha256 "343bc819a75f0e44f0317614c38a2aab3c20112ccd171971a505378d3ddd4f64"

  url "https://github.com/phx/homebrew-nucc/archive/0.0.6.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on cask: 'boinc'

  installer script: {
                      executable: './quickstart.sh',
                      args:       ['none'],
                      sudo:       false,
                    }

end
