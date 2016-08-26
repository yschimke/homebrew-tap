class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.03/reactivesocket-cli-0.0.3.tar"
  version "0.0.3"
  sha256 "2b43671081d36ae8c4cbc311232f57916ebed3148b1bdb890d68fd8a114630e5"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "reactivesocket-cli"
  end
end
