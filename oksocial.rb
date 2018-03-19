class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  version "1.37.0"
  url "https://github.com/yschimke/oksocial/releases/download/#{version}/oksocial-#{version}.tgz"
  sha256 "3e963a3cb124983395b576132853e57e3dca4eba7fd9ecfe3ea7a8350c05e92b"

  depends_on :java => :optional
  depends_on "bash-completion" => :recommended
  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/okscript", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/oksocial", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/okscript", /^PLUGINDIR.*/, "PLUGINDIR=" + var/"oksocial/plugins"
    inreplace "#{libexec}/bin/oksocial", /^PLUGINDIR.*/, "PLUGINDIR=" + var/"oksocial/plugins"
    bin.install_symlink "#{libexec}/bin/oksocial" => "okapi"
    bin.install_symlink "#{libexec}/bin/oksocial" => "okws"
    bin.install_symlink "#{libexec}/bin/4sqapi"
    bin.install_symlink "#{libexec}/bin/fbapi"
    bin.install_symlink "#{libexec}/bin/githubapi"
    bin.install_symlink "#{libexec}/bin/mapboxapi"
    bin.install_symlink "#{libexec}/bin/okscript"
    bin.install_symlink "#{libexec}/bin/oksocial"
    bin.install_symlink "#{libexec}/bin/sorecent.kts" => "sorecent"
    bin.install_symlink "#{libexec}/bin/twitterapi"
    bin.install_symlink "#{libexec}/bin/tweetsearch.kts" => "tweetsearch"
    bin.install_symlink "#{libexec}/bin/uberprices.kts" => "uberprices"

    bash_completion.install "#{libexec}/bash/completion.bash" => "oksocial"

    unless (var/"oksocial/plugins").exist?
      (var/"oksocial/plugins").mkpath
    end
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
