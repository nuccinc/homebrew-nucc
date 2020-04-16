class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.13.tar.gz"
  sha256 "af271a738e19198affa075ad51f1905b8edc1d5ddd443aa3ddab8e30b29f3f48"

  depends_on :boinc => "7.16.6"

  def install
    # move 'quickstart.sh' to #{prefix}/bin/nucc-install
    # bin.install "quickstart.sh" => "nucc-install"
    system "./quickstart.sh"
  end

  test do
    system "false"
  end
end
