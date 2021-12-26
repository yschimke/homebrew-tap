# 
class Okurl < Formula
  desc "OkHttp Kotlin command line"
  homepage "https://github.com/yschimke/okurl"
  url "https://github.com/yschimke/okurl/releases/download/v3.14.0/okurl-graal-3.14.0.zip"
  version "3.14.0"
  sha256 "6b508f8f9bafeb796884e8d032822f497a1fbcadd89c15d0e81a6855ed143f28"
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
