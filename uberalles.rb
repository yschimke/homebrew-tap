class Uberalles < Formula
  desc "Uberalles"
  homepage "https://github.com/yschimke/uberalles"
  url "https://github.com/yschimke/uberalles/archive/0.1.tar.gz"
  sha256 "f4518527d3d66f248697ef8d502333668d3e21f0cbefdc593ee7d66f3decf3b7"

  depends_on "oksocial"

  def install
    bin.install "commands/ubereta"
  end
end
