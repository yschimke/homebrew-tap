class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://github.com/yschimke/oksocial/releases/download/oksocial-1.0.15/oksocial-1.0.15-bundle.tar.gz"
  sha256 "f67dd850733d176bce8c335b844b3d83aefaf3953c20e7eb8af8f6bb2be3195a"

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
