class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.29"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-graal-#{version}.tar"
  sha256 "6304dc5048ec684537cd711a169b639f2f9f01d6fb173a053fad1ec98b018d80"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    zsh_completion.install "#{libexec}/zsh/_rsocket-cli" => "_rsocket-cli"
  end
end
