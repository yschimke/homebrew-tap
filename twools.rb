class Twools < Formula
  desc "Twools"
  homepage "https://github.com/yschimke/twools"
  url "https://github.com/yschimke/twools/archive/0.1.tar.gz"
  sha256 "f3928ca48db71a42a2068ab531853d72a5d0dc65afc4318b8753db99d16cb00a"

  depends_on "oksocial"

  def install
    bin.install "commands/tweetsearch"
  end
end
