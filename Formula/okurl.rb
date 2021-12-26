# 
class Okurl < Formula
  desc "OkHttp Kotlin command line"
  homepage "https://github.com/yschimke/okurl"
  url "https://github.com/yschimke/okurl/releases/download/v3.14.0/okurl-graal-3.14.0.zip"
  version "3.14.0"
  sha256 "b7e268fe0dbbff99c3f42b76f7468238dea3d165006cc1ee55f96f9d5d65057d"
  license "Apache-2.0"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"

    zsh_completion.install "#{libexec}/zsh/_okurl" => "_okurl"
  end

  test do
    output = shell_output("#{bin}/okurl --version")
    assert_match "3.14.0", output
  end
end
