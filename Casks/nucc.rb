cask 'nucc' do
  version '0.0.4'
  sha256 "38502b0b9de52c7af02bd796314aa1b4427a640b976153d2f4f6e0d1976dc9e9"

  url "https://github.com/phx/homebrew-nucc/archive/0.0.4.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on "boinc"

  postflight do
    system_command './quickstart.sh'
  end
end
