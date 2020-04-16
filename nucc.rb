class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.7.tar.gz"
  sha256 "15dc0d4739d7a50f244d5a806a83bb32e24c361e11c59b865005bf376f328ab6"

  #depends_on "caskroom/cask/boinc" => "7.16.6"

  def install
    # move 'quickstart.sh' to #{prefix}/bin/nucc-install
    # bin.install "quickstart.sh" => "nucc-install"
    system "./quickstart.sh", "--native", "--silent"
  end

  test do
    system "false"
  end
end
