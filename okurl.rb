class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "2.31"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-graal-#{version}.tar"
  sha256 "a6f2d29522785946a3409677fce130b144f6bb65ddf4ed3fa7bf28f6c0ebf8e0"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
