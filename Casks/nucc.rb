cask 'nucc' do
  version '0.0.3'
  sha256 "5dfbc56730cf2e6d44a820e0caa60a8c0593ca61602d10d0ba32bbd773c7b5b5"

  url "https://github.com/phx/homebrew-nucc/archive/0.0.3.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on "boinc"

  postflight do
    system_command './quickstart.sh'
  end
end
