class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.4.tar.gz"
  sha256 "e9617dbc785f1c6cd0ae8d7bdefbe58bdae93c5c43ac96f72e0654a12475affe"
  #depends_on "caskroom/cask/boinc" => "7.16.6"

  def install
    # move 'quickstart.sh' to #{prefix}/bin/nucc-install
    # bin.install "quickstart.sh" => "nucc-install"
    system "./quickstart.sh", "--native"
  end

  test do
    system "false"
  end
end
