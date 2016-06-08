class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://github.com/yschimke/oksocial/releases/download/oksocial-1.0.10/oksocial-1.0.10-bundle.tar.gz"
  version "1.0.10"
  sha256 "480ae00a203b57b424128500279d5795f26cc571b025902afec315f0451724ab"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial" do |s|
      s.gsub! /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    end
    inreplace "#{libexec}/bin/okshell" do |s|
      s.gsub! /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    end
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
    bin.install_symlink "#{libexec}/bin/twitterapi"
    bin.install_symlink "#{libexec}/bin/uberapi"
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
