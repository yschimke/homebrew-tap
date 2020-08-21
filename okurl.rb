class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "2.19"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-graal-#{version}.tar"
  sha256 "0810bc469a33022dbb8d167f9c1a990095b8e217eb7e04b401fc40c78b7d203d"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
