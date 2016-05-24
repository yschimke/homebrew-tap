class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/yschimke/reactivesocket-cli/releases/download/HEAD/reactivesocket-cli-0.0.1.tar"
  version "0.0.1"
  sha256 "73a2b7da064344c30c2064cbb270edab6a49c87a7e703712ac70d2d168190bde"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
  end
end
