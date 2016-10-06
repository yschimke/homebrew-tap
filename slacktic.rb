class Slacktic < Formula
  desc "slacktic"
  homepage "https://github.com/slacktic/twools"
  url "https://github.com/yschimke/slacktic/archive/0.1.tar.gz"
  sha256 "190d12727589fd7e558f64dbacbf557d673afc617f279ffc26aff47feb3845c5"

  depends_on "oksocial"

  def install
    bin.install "commands/slackrtm"
  end
end
