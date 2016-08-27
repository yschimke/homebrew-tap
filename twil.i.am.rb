class TwilIAm < Formula
  desc "Twiliam"
  homepage "https://github.com/yschimke/twil.i.am"
  url "https://github.com/yschimke/twil.i.am/archive/0.1.tar.gz"
  sha256 "21535d5d5c27d4eef7a46ec525454c2e3d582932ccb61176bc28d0d8f0ed61fd"

  depends_on "yschimke/tap/oksocial"

  def install
    bin.install "bin/twiliolist"
    bin.install "bin/twiliosend"
  end
end
