class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.4/reactivesocket-cli-0.0.4.tar"
  version "0.0.4"
  sha256 "4021718356d4ccc0e78309ebd4afbe2a49575945382da26a85876cf93fa60628"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "reactivesocket-cli"
  end
end
