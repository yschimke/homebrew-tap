class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.12/rsocket-cli-0.0.12.tar"
  version "0.0.12"
  sha256 "2e378dd5c479de1763d4e915cf9bf39a0fcb237b4c34895579800610c8e26435"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
