class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.30"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-graal-#{version}.tar"
  sha256 "d9de489ad4cf3bbb2ec7b5a03638454851d68577f78306e456b53ca081e20f87"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    zsh_completion.install "#{libexec}/zsh/_rsocket-cli" => "_rsocket-cli"
  end
end
