class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "http://repo1.maven.org/maven2/com/baulsupp/oksocial/1.0.2/oksocial-1.0.2-bundle.tar.gz"
  version "1.0.2"
  sha256 "d9f229f5f33eb5b060e6aed91221070e1559303e41fbab8c17e7c4ce8315a78d"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial" do |s|
      s.gsub! /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    end
    bin.install_symlink "#{libexec}/bin/oksocial"
    bin.install_symlink "#{libexec}/bin/oksocial" => "fbgraph"
    bin.install_symlink "#{libexec}/bin/oksocial" => "uberapi"
    bin.install_symlink "#{libexec}/bin/oksocial" => "twitterapi"
    bin.install_symlink "#{libexec}/bin/oksocial" => "oksocial-command"
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
