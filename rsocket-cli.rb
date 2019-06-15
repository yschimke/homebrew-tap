class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.15.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tgz"
  sha256 "f08579cda893a79eea77799a3ac107338d14c4c570ad4db0e6e5254c5e7030fe"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    mkdir prefix/"bash"

    system "#{bin}/rsocket-cli --completionScript > #{prefix}/bash/completion.bash"
    bash_completion.install "#{prefix}/bash/completion.bash" => "rsocket-cli"

    system "echo 'autoload -U +X bashcompinit && bashcompinit' > #{prefix}/bash/completion.zsh"
    system "#{bin}/rsocket-cli --completionScript >> #{prefix}/bash/completion.zsh"
    zsh_completion.install "#{prefix}/bash/completion.zsh" => "_rsocket-cli"
  end
end
