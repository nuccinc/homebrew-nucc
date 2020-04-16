class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.11.tar.gz"
  sha256 "29664b6aad9b1ec15f25f6f8a1039f0f035085b81766d958d19c1806d9c98413"

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
