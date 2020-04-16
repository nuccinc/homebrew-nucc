cask 'nucc' do
  version '2.7.1_387'
  sha256 'a3738d0513d736918a6d71535ef3d85dd184af267c05698e49ac4c6b48f38e17'

  url ""
  name 'nucc'
  homepage "https://github.com/phx/nucc"

  depends_on :boinc => "7.16.6"

  postflight do
    system_command './quickstart.sh',
                   sudo: false
  end
end
