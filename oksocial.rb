class Oksocial < Formula
  desc "OkSocial"
  homepage "https://github.com/yschimke/oksocial"
  url "https://github.com/yschimke/oksocial/releases/download/oksocial-1.0.3/oksocial-1.0.3-bundle.tar.gz"
  version "1.0.3"
  sha256 "8f7681e1530606814917d7a349b5d6fafa8192ff0976650bb784212c00cf80d6"

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
    bin.install_symlink "#{libexec}/bin/fbapi"
    bin.install_symlink "#{libexec}/bin/lyftapi"
    bin.install_symlink "#{libexec}/bin/okshell"
    bin.install_symlink "#{libexec}/bin/oksocial"
    bin.install_symlink "#{libexec}/bin/tweetsearch"
    bin.install_symlink "#{libexec}/bin/twitterapi"
    bin.install_symlink "#{libexec}/bin/uberapi"
  end

  test do
    system "#{bin}/oksocial" "https://api.twitter.com/robots.txt"
  end
end
