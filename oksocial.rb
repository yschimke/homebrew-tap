class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "http://repo1.maven.org/maven2/com/baulsupp/oksocial/1.0.0/oksocial-1.0.0-bundle.tar.gz"
  version "1.0.0"
  sha256 "953ed010e51a74ae7946276d43cf93bfb19d5d82b26b355f1947fa97b5a59014"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial" do |s|
      s.gsub! /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    end
    bin.install_symlink "#{libexec}/bin/oksocial"
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
