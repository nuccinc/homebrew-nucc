class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.2.tar.gz"
  sha256 "c25f8b85fa44922ffbd216f77212ed30e4de1c9a0be27dc572c64cf1d56fb9ed"
  #depends_on "caskroom/cask/boinc" => "7.16.6"

  def install
    # move 'brutalist.py' under #{prefix}/bin/
    # bin.install "brutalist.py" => "brutalist"
    system_command '/bin/bash',
                   args: ['quickstart.sh', '--native'],
                   sudo: false
  end

  test do
    system "false"
  end
end
