class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.8.tar.gz"
  sha256 "84cdc78b6180cc06630af807983770c126a0d65d03952021145e9ceb2f4b2488"
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
