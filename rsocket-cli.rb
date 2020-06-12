class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.23"
  url "https://jitpack.io/com/github/rsocket/rsocket-cli/#{version}/rsocket-cli-#{version}.tar"
  sha256 "18747149ea61e3a7a957311401186d445d08b05eb12702e82fd399e9829f0f26"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    zsh_completion.install "#{libexec}/zsh/_rsocket-cli" => "_rsocket-cli"
  end
end
