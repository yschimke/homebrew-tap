class Foursquareand7 < Formula
  desc "foursquareand7"
  homepage "https://github.com/yschimke/foursquareand7"
  url "https://github.com/yschimke/4sqand7/archive/0.1.tar.gz"
  sha256 "9a1f8f92842b2ca60726dd53bdc38e20e9ded8a5366fb815a203a0a5ed299796"

  depends_on "oksocial"

  def install
    bin.install "commands/4sqsearch"
  end
end
