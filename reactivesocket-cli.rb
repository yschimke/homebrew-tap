class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.9/reactivesocket-cli-0.0.9.tar"
  version "0.0.9"
  sha256 "d29eb097b1f1003f8e7c4a6670e0149048654abf92f0b5e803717d1f0bbe0edf"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "reactivesocket-cli"
  end
end
