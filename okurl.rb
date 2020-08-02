class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "2.15"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-graal-#{version}.tar"
  sha256 "f8df4d3a593b3c70d991706e2c1e4a2283d2179e1c0a50f50b9f8d0281ae736d"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
