class EmulatorTools < Formula
  desc "Android Emulator Tools"
  homepage "https://github.com/yschimke/emulator-tools"
  url "https://github.com/yschimke/emulator-tools/releases/download/v0.3.0/emulator-tools-graal-0.3.0.zip"
  version "0.3.0"
  sha256 "8076c6de35a8ce11c10966296c76dd76dd719a73dbd16ad0374784d64ce64839"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/emulator-tools"
  end

  test do
    output = shell_output("#{bin}/emulator-tools --version")
    assert_match "0.3.0", output
  end
end
