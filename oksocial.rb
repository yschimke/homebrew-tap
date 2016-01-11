class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://oss.sonatype.org/content/repositories/snapshots/com/baulsupp/oksocial/1.0.0-SNAPSHOT/oksocial-1.0.0-20160111.224140-2-bundle.tar.gz"
  version "1.0.0-SNAPSHOT"
  sha256 "f550de1cd9cf6f95ab29ceadeeac60eb974ea0d842a8838fb08171cf02ab9aea"

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
