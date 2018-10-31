class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.14.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tgz"
  sha256 "97c304c18a89fcbe59e2d0f8d6767f777ec811529713ca8796c93c41b6cb566d"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
