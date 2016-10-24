class Uberalles < Formula
  desc "Uberalles"
  homepage "https://github.com/yschimke/uberalles"
  url "https://github.com/yschimke/uberalles/archive/0.2.tar.gz"
  sha256 "dfa9e5404af775d4d63b9dfc5a06a3def506c3bfc124dea245f96175e1f10bbb"

  depends_on "oksocial"

  def install
    bin.install "commands/ubereta"
  end
end
