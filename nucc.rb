class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.5.tar.gz"
  sha256 "95056f7549cf1689902ee4ce859319c33957ad8744acf48671aeebb68625216a"
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
