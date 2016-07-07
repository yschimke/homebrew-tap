class ReactivesocketCli < Formula
  desc "ReactiveSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.2-SNAPSHOT/reactivesocket-cli-0.0.2-SNAPSHOT.tar"
  version "0.0.2-SNAPSHOT"
  sha256 "d6137b50d66bb149e78c5e50cd0191213820cad1bae4a5dd5d3df8bfe8fa187c"

  depends_on :java

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/reactivesocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "reactivesocket-cli"
  end
end
