class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://github.com/yschimke/oksocial/releases/download/oksocial-1.0.21/oksocial-1.0.21-bundle.tar.gz"
  sha256 "f99dd04f846adf9fb17b29618c67bd31c73c5e3fc6547f837c88b62a33238f6b"

  devel do
    file = Dir.glob(ENV['HOME'] + '/workspace/oksocial/target/oksocial-*-bundle.tar.gz').first
    url "file://#{file}"
    sha256 Digest::SHA256.file(file).to_s
  end

  depends_on :java
  depends_on "jq" => :recommended
  depends_on "corelocationcli" => :recommended

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial", /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/okshell", /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    bin.install_symlink "#{libexec}/bin/oksocial" => "okapi"
    bin.install_symlink "#{libexec}/bin/4sqapi"
    bin.install_symlink "#{libexec}/bin/4sqsearch"
    bin.install_symlink "#{libexec}/bin/fbapi"
    bin.install_symlink "#{libexec}/bin/githubapi"
    bin.install_symlink "#{libexec}/bin/imgurapi"
    bin.install_symlink "#{libexec}/bin/lyftapi"
    bin.install_symlink "#{libexec}/bin/okshell"
    bin.install_symlink "#{libexec}/bin/oksocial"
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
