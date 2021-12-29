# Generated with JReleaser 0.10.0 at 2021-12-29T21:34:43.944756Z
class EmulatorTools < Formula
  desc "Android Emulator Tools"
  homepage "https://github.com/yschimke/emulator-tools"
  url "https://github.com/yschimke/emulator-tools/releases/download/v0.4.3.0/emulator-tools-0.4.3.0-osx-x86_64.zip"
  version "0.4.3.0"
  sha256 "eca10a175e0810b8e3c844f31842093ec8bb228d843083c040f7e87c1ecf04ff"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/emulator-tools"
  end

  test do
    output = shell_output("#{bin}/emulator-tools --version")
    assert_match "0.4.3.0", output
  end
end
