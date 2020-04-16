class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.9.tar.gz"
  sha256 "bfc3ff54c9f052d108c24f9560fd7d7265edc413595b473e37a0f2857a9ef12c"
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
