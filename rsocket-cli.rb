class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.17.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tgz"
  sha256 "2ca9fbb182f452ea03390dbf96c95eb7ffc3a3c5cf87330c91407fd931923e3e"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    system "#{bin}/rsocket-cli --completionScript > #{prefix}/bash/completion.bash"
    bash_completion.install "#{prefix}/bash/completion.bash" => "rsocket-cli"

    system "echo '#compdef rsocket-cli' > #{prefix}/bash/completion.zsh"
    system "echo 'autoload -U +X bashcompinit && bashcompinit' >> #{prefix}/bash/completion.zsh"
    system "#{bin}/rsocket-cli --completionScript >> #{prefix}/bash/completion.zsh"
    zsh_completion.install "#{prefix}/bash/completion.zsh" => "_rsocket-cli"
  end
end
