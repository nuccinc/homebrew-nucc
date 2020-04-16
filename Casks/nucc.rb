cask 'nucc' do
  version '0.0.1'
  sha256 "175b9660f12fb978fef5ec29932e13b1b7a233ada14478e93b6805b0cc7c3509"

  url "https://github.com/phx/homebrew-nucc/archive/0.0.1.tar.gz"
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on :boinc => "7.16.6"

  postflight do
    system_command './quickstart.sh',
                   sudo: false
  end
end
