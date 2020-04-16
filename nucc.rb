class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.10.tar.gz"
  sha256 "84b9ab842ffc1e99881296e140287e4c87d77e414aa6bada9d181c8a2b56b5b0"

  depends_on "homebrew/cask"
  depends_on "homebrew/cask-boinc" => "7.16.6"

  def install
    # move 'quickstart.sh' to #{prefix}/bin/nucc-install
    # bin.install "quickstart.sh" => "nucc-install"
    system "./quickstart.sh"
  end

  test do
    system "false"
  end
end
