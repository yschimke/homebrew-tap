class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "3.6"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-graal-#{version}.tar"
  sha256 "e9bc5d743c18ab6655f46958154bafe9aa8e4a3ae81b5fd8f19d2fc514488916"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
