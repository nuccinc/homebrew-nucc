cask 'nucc' do
  version '0.0.2'
  sha256 "24d3a2b299ebfc4820959d35af0f45476633bcb37b2f6df819c094465cef62ca"

  url "https://github.com/phx/homebrew-nucc/archive/0.0.2.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on :boinc => "7.16.6"

  postflight do
    system_command './quickstart.sh',
                   sudo: false
  end
end
