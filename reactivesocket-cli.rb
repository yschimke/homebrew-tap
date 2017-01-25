class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.5/reactivesocket-cli-0.0.5.tar"
  version "0.0.5"
  sha256 "2aef34f29a07442b49b88765af0cc5390e4271d8be6a86b0da8fe553717da117"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "reactivesocket-cli"
  end
end
