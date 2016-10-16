class Doyouevenlyft < Formula
  desc "Doyouevenlyft"
  homepage "https://github.com/yschimke/doyouevenlyft"
  url "https://github.com/yschimke/doyouevenlyft/archive/0.2.tar.gz"
  sha256 "aa88341c607c47a65b0ac39909c67fca1c885eb8290e744bc131db1814730ae2"

  depends_on "oksocial"

  def install
    bin.install "commands/lyfteta"
  end
end
