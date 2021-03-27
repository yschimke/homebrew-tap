class Cooee < Formula
  desc "Cooee"
  homepage "https://github.com/yschimke/cooee-cli"
  version "0.3"
  url "https://github.com/yschimke/cooee-cli/releases/download/#{version}/cooee-cli-graal-#{version}.tar"
  sha256 ""

  on_linux do
    url "https://github.com/yschimke/cooee-cli/releases/download/0.2/cooee-cli-graal-linux-0.2.tar"
    sha256 "9688a34de261588a6ed6b8f99230a6268e2b9f3c17c0a741f4bf79968e005769"
  end

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cooee"
    zsh_completion.install "#{libexec}/zsh/_cooee"
  end
end
