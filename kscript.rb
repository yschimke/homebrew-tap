class Kscript < Formula
  desc "KScript"
  homepage "https://github.com/holgerbrandl/kscript"
  url "https://github.com/holgerbrandl/kscript/releases/download/v2.1.0/kscript-2.1.0-bin.zip"
  sha256 "aa7a55e4a0c498e6dfb9f81ec9a352fb4b38ae2e0b113a33879b5bfd1fcdf6e1"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^jarPath=.*/, "jarPath=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
