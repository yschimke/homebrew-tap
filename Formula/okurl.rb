# 
class Okurl < Formula
  desc "OkHttp Kotlin command line"
  homepage "https://github.com/yschimke/okurl"
  url "https://github.com/yschimke/okurl/releases/download/v3.9.0/okurl-graal-3.9.0.zip"
  version "3.9.0"
  sha256 "0a45ff3a9f9936482ded01bc1d5fbbc1b0e77cb064f518ad2cca430c34d81abc"
  license "Apache-2.0"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"

    zsh_completion.install "#{libexec}/zsh/_okurl" => "_okurl"
  end

  test do
    output = shell_output("#{bin}/okurl --version")
    assert_match "3.9.0", output
  end
end
