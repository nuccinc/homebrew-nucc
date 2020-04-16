class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.1.tar.gz"
  sha256 "51524bb34657ae824702797d62644ec854954dbfb2aed06ea92b6d95ebebdab1"
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
