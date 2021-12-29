# Generated with JReleaser 0.10.0 at 2021-12-29T21:57:18.881693Z
class EmulatorTools < Formula
  desc "Android Emulator Tools"
  homepage "https://github.com/yschimke/emulator-tools"
  url "https://github.com/yschimke/emulator-tools/releases/download/v0.4.5.0/emulator-tools-0.4.5.0-osx-x86_64.zip"
  version "0.4.5.0"
  sha256 "86e7c79be0babf9b2841e4834086df64df042139068942f4484d0e31af497466"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/emulator-tools"
  end

  test do
    output = shell_output("#{bin}/emulator-tools --version")
    assert_match "0.4.5.0", output
  end
end
