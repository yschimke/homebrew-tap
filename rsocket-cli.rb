class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.9.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tgz"
  sha256 "9e4bce7ca0ff95f569a650b4cc2a2527ed07d74ed8b6c672a0a2be1397a6c009"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
