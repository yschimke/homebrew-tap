class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.22"
  url "https://jitpack.io/com/github/rsocket/rsocket-cli/#{version}/rsocket-cli-#{version}.tar"
  sha256 "422ebe71f1f26e4f6c9ed4079cc15cd899fb6165fa8ca19a59f8bfb16b0147e8"

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
