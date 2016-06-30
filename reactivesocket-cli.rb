class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.1-SNAPSHOT/reactivesocket-cli-0.0.1-SNAPSHOT.tar"
  version "0.0.1-SNAPSHOT"
  sha256 "ac4a6ac6d36ebf5535f1a1ddb229f6afda77c4e6bf23b01b063f87acbfe02dc2"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "reactivesocket-cli"
  end
end
