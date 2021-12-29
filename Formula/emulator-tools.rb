class EmulatorTools < Formula
  desc "Android Emulator Tools"
  homepage "https://github.com/yschimke/emulator-tools"
  url "https://github.com/yschimke/emulator-tools/releases/download/v0.4.0.0/emulator-tools-graal-0.4.0.0.zip"
  version "0.4.0.0"
  sha256 "4b98d5afb851aff89db746908749cde3bd2eaa839e1de3a4470daa63eeee35a0"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/emulator-tools"
  end

  test do
    output = shell_output("#{bin}/emulator-tools --version")
    assert_match "0.4.0.0", output
  end
end
