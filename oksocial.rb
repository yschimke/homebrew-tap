class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://oss.sonatype.org/content/repositories/snapshots/com/baulsupp/oksocial/1.0.3-SNAPSHOT/oksocial-1.0.3-20160505.083820-2-bundle.tar.gz"
  version "1.0.3-SNAPSHOT"
  sha256 "029b94e6bb36f83348ea00d558c4d1e084b7d8be6f17595b1aba1b104e61f0ff"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/oksocial" do |s|
      s.gsub! /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    end
    bin.install_symlink "#{libexec}/bin/oksocial"
    bin.install_symlink "#{libexec}/bin/oksocial" => "uberapi"
    bin.install_symlink "#{libexec}/bin/oksocial" => "twitterapi"
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
