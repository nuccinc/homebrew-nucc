class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.3.tar.gz"
  sha256 "1639fd7e9293f7c391804d18a89c9b85a4c3a2e9c8666a6ac9b2ce5204d7e0b0"
  #depends_on "caskroom/cask/boinc" => "7.16.6"

  def install
    # move 'quickstart.sh' to #{prefix}/bin/nucc-install
    bin.install "quickstart.sh" => "nucc-install"
  end

  postflight do
    system_command 'nucc-install',
                   args: ['--native'],
                   sudo: false
    bin.uninstall "nucc-install"
  end

  test do
    system "false"
  end
end
