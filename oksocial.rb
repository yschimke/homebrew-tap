class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://oss.sonatype.org/content/repositories/snapshots/com/baulsupp/oksocial/1.0.0-SNAPSHOT/oksocial-1.0.0-20160111.201853-1-bundle.tar.gz"
  version "1.0.0-SNAPSHOT"
  sha256 "09b41c4baab837b26c301c49c9708c9e92e27281fb5e56a703f788f54a51d459"

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
