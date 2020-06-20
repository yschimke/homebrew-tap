class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.25"
  url "https://jitpack.io/com/github/rsocket/rsocket-cli/#{version}/rsocket-cli-#{version}.tar"
  sha256 "cb384bd5ded884df7f8287f8f1a4e34461f71c09593bf83ea7dae7d7ebd0c744"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    zsh_completion.install "#{libexec}/zsh/_rsocket-cli" => "_rsocket-cli"
  end
end
