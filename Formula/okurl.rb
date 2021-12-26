# 
class Okurl < Formula
  desc "OkHttp Kotlin command line"
  homepage "https://github.com/yschimke/okurl"
  url "https://github.com/yschimke/okurl/releases/download/v3.17.0/okurl-graal-3.17.0.zip"
  version "3.17.0"
  sha256 "d690714f1d3d6339ac81c7cb2d8d267bf8bf7c03ac2a81b3141d5f89c11525c0"
  license "Apache-2.0"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"

    zsh_completion.install "#{libexec}/zsh/_okurl" => "_okurl"
  end

  test do
    output = shell_output("#{bin}/okurl --version")
    assert_match "3.17.0", output
  end
end
