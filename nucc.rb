class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.3.tar.gz"
  sha256 "bd8d2ca43ef05fd9dbc5f3f42ac123c778e6e38294a8c50850ca9e321f7c3926"

  #depends_on "caskroom/cask/boinc" => "7.16.6"

  def install
    # move 'brutalist.py' under #{prefix}/bin/
    # bin.install "brutalist.py" => "brutalist"
    system_command './quickstart.sh',
                   args: ['--native'],
                   sudo: false
  end

  test do
    system "false"
  end
end
