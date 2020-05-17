class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.21.0"
  url "https://jitpack.io/com/github/yschimke/rsocket-cli/#{version}/rsocket-cli-#{version}.tar"
  sha256 "9c4d2ada2ab025a4fb285e3e752fd39cc1009e65cd6f1f2ba188b951ce1c4fb5"

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
