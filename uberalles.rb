class Uberalles < Formula
  desc "Uberalles"
  homepage "https://github.com/yschimke/uberalles"
  url "https://github.com/yschimke/uberalles/archive/0.3.tar.gz"
  sha256 "9cbcd861770822bc361b5fc6590d0352c77e4ab1b5adac95b4c587d6292b964d"

  depends_on "oksocial"

  def install
    bin.install "commands/ubereta"
  end
end
