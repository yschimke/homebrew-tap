class Doyouevenlyft < Formula
  desc "Doyouevenlyft"
  homepage "https://github.com/yschimke/doyouevenlyft"
  url "https://github.com/yschimke/doyouevenlyft/archive/0.1.tar.gz"
  sha256 "b1e16e718dc385591aef8196b24fceb0029d3133a83b8619f4847aeb4eeefd8b"

  depends_on "oksocial"

  def install
    bin.install "commands/lyfteta"
  end
end
