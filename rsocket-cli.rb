class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.29"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-graal-#{version}.tar"
  sha256 "4a20ff3fd081c17839356747fe05bbce0428c4307a039e1e5eed83b4aa02df55"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocketcli"
    mkdir prefix/"bash"

    zsh_completion.install "#{libexec}/zsh/_rsocket-cli" => "_rsocket-cli"
  end
end
