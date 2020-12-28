class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.26"
  url "https://jitpack.io/com/github/rsocket/rsocket-cli/#{version}/rsocket-cli-#{version}.tar"
  sha256 "d0d6249a59a32b77e3076e9d47d2ec962e4448ea12f92694583a440e1322a532"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    zsh_completion.install "#{libexec}/zsh/_rsocket-cli" => "_rsocket-cli"
  end
end
