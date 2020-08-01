class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "2.12"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-#{version}.tar"
  sha256 "42113d76161ad3e97d4f8171212c37d6e4e315c37738acb0060b13e4d8361db7"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
