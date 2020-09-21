class Cooee < Formula
  desc "Cooee"
  homepage "https://github.com/yschimke/cooee-cli"
  version "0.1"
  url "https://github.com/yschimke/cooee-cli/releases/download/#{version}/cooee-cli-graal-#{version}.tar"
  sha256 "24c30e87318e9b48ad0decb727d6a233ada745e0ab52743220f2c788952b94f1"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cooee"
    zsh_completion.install "#{libexec}/zsh/_cooee"
  end
end
