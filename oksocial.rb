class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://github.com/yschimke/oksocial/releases/download/oksocial-1.0.52/oksocial-1.0.52-bundle.tar.gz"
  sha256 "c8a59d78cea2d28517ff071b40b18e3dab7e7e5fbcbecd6c781052ea080b7584"

  depends_on :java
  depends_on "bash-completion" => :recommended
  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/okshell", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/oksocial", /^PLUGINDIR.*/, "PLUGINDIR=" + var/"oksocial/plugins"
    inreplace "#{libexec}/bin/okshell", /^PLUGINDIR.*/, "PLUGINDIR=" + var/"oksocial/plugins"
    bin.install_symlink "#{libexec}/bin/oksocial" => "okapi"
    bin.install_symlink "#{libexec}/bin/oksocial" => "okws"
    bin.install_symlink "#{libexec}/bin/4sqapi"
    bin.install_symlink "#{libexec}/bin/fbapi"
    bin.install_symlink "#{libexec}/bin/giphyapi"
    bin.install_symlink "#{libexec}/bin/githubapi"
    bin.install_symlink "#{libexec}/bin/igapi"
    bin.install_symlink "#{libexec}/bin/imgurapi"
    bin.install_symlink "#{libexec}/bin/lyftapi"
    bin.install_symlink "#{libexec}/bin/okshell"
    bin.install_symlink "#{libexec}/bin/oksocial"
    bin.install_symlink "#{libexec}/bin/msftapi"
    bin.install_symlink "#{libexec}/bin/slackapi"
    bin.install_symlink "#{libexec}/bin/sorecent"
    bin.install_symlink "#{libexec}/bin/squareapi"
    bin.install_symlink "#{libexec}/bin/stackexchangeapi"
    bin.install_symlink "#{libexec}/bin/transferwiseapi"
    bin.install_symlink "#{libexec}/bin/twilioapi"
    bin.install_symlink "#{libexec}/bin/twitterapi"
    bin.install_symlink "#{libexec}/bin/uberapi"

    bash_completion.install "#{libexec}/bash/completion.bash" => "oksocial"

    unless (var/"oksocial/plugins").exist?
      (var/"oksocial/plugins").mkpath
    end
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
