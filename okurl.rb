class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "2.11"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl.tar"
  sha256 "a6560183c213f9020d6aaf5629b33b0de19b3cc05b44cc8f2f223ca6b2eba7a4"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/build/graal/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
