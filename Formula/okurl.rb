# Generated with JReleaser 1.0.0-M1 at 2022-01-30T16:23:45.90374Z
class Okurl < Formula
  desc "OkHttp Kotlin command line"
  homepage "https://github.com/yschimke/okurl"
  url "https://github.com/yschimke/okurl/releases/download/v4.3.0/okurl-graal-4.3.0.zip"
  version "4.3.0"
  sha256 "bda81b97a088c191606fb954d4580a85014448b4311633c5f83795879e749be5"
  license "Apache-2.0"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"

    zsh_completion.install "#{libexec}/zsh/_okurl" => "_okurl"
  end

  test do
    output = shell_output("#{bin}/okurl --version")
    assert_match "4.3.0", output
  end
end
