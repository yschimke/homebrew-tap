class Jiphy < Formula
  desc "Jiphy"
  homepage "https://github.com/yschimke/jiphy"
  url "https://github.com/yschimke/jiphy/archive/0.1.tar.gz"
  sha256 "d3e2ccf61e93660e6d79fe9cf1952d103b3901f4485bb8be52b7f7131a8a2a01"

  depends_on "oksocial"

  def install
    bin.install "commands/jiphysearch"
  end
end
