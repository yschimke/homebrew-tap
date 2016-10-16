class Foursquareand7 < Formula
  desc "foursquareand7"
  homepage "https://github.com/yschimke/foursquareand7"
  url "https://github.com/yschimke/4sqand7/archive/1.0.tar.gz"
  sha256 "6d8083f08fe0affedc33cbfdf6d351fbbb9d5fc7e4fbb614e8dd5a9ac3d74705"

  depends_on "oksocial"

  def install
    bin.install "commands/4sqsearch"
  end
end
