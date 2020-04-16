class Nucc < Formula
  desc "COVID-19 research via distributed computing in collaboration with The National Upcycled Computing Collective."
  homepage "https://github.com/phx/nucc"
  url "https://github.com/phx/homebrew-nucc/archive/0.0.7.tar.gz"
  sha256 "15dc0d4739d7a50f244d5a806a83bb32e24c361e11c59b865005bf376f328ab6"

  depends_on "caskroom/cask/boinc" => "7.16.6"

  def install
    # move 'quickstart.sh' to #{prefix}/bin/nucc-install
    # bin.install "quickstart.sh" => "nucc-install"
    # system "./quickstart.sh", "--native", "--silent"
    ENV["project_url"] = "http://boinc.bakerlab.org/rosetta/"
    ENV["weak_key"] = "2108683_fdd846588bee255b50901b8b678d52ec"
    ENV["config_dir"] = "/Library/Application Support/BOINC Data"
    mv "gui_rpc_auth.cfg" config_dir/
    mv "cc_config.xml" config_dir/
    mv "remote_hosts.cfg" config_dir/
    system "(/Applications/BOINCmanager.app/Contents/Resources/boinc -redirectio -dir " config_dir/ " --daemon --allow_remote_gui_rpc --attach_project " project_url " " weak_key "&) >/dev/null 2>&1"
    system "open", "/Applications/BOINCManager.app"
  end

  test do
    system "false"
  end
end
