class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://github.com/yschimke/oksocial/releases/download/oksocial-1.0.30/oksocial-1.0.30-bundle.tar.gz"
  sha256 "ed21d8ef259ca0a623808d0b7b6dfce7b562e4083a593463270f6b64a0dce45f"

#  devel do
#    file = Dir.glob(ENV['HOME'] + '/workspace/oksocial/target/oksocial-*-bundle.tar.gz').first
#    url "file://#{file}"
#    sha256 Digest::SHA256.file(file).to_s
#  end

  depends_on :java
  depends_on "jq" => :recommended
  depends_on "corelocationcli" => :recommended

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/okshell", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    bin.install_symlink "#{libexec}/bin/oksocial" => "okapi"
    bin.install_symlink "#{libexec}/bin/4sqapi"
    bin.install_symlink "#{libexec}/bin/4sqsearch"
    bin.install_symlink "#{libexec}/bin/fbapi"
    bin.install_symlink "#{libexec}/bin/githubapi"
    bin.install_symlink "#{libexec}/bin/imgurapi"
    bin.install_symlink "#{libexec}/bin/lyftapi"
    bin.install_symlink "#{libexec}/bin/okshell"
    bin.install_symlink "#{libexec}/bin/oksocial"
    bin.install_symlink "#{libexec}/bin/msftapi"
    bin.install_symlink "#{libexec}/bin/slackapi"
    bin.install_symlink "#{libexec}/bin/slackrtm"
    bin.install_symlink "#{libexec}/bin/sorecent"
    bin.install_symlink "#{libexec}/bin/sheetsuapi"
    bin.install_symlink "#{libexec}/bin/squareapi"
    bin.install_symlink "#{libexec}/bin/stackexchangeapi"
    bin.install_symlink "#{libexec}/bin/tweetsearch"
    bin.install_symlink "#{libexec}/bin/twilioapi"
    bin.install_symlink "#{libexec}/bin/twiliolist"
    bin.install_symlink "#{libexec}/bin/twiliosend"
    bin.install_symlink "#{libexec}/bin/twitterapi"
    bin.install_symlink "#{libexec}/bin/uberapi"

    bash_completion.install "#{libexec}/bash/completion.bash" => "oksocial"
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
