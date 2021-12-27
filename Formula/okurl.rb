# 
class Okurl < Formula
  desc "OkHttp Kotlin command line"
  homepage "https://github.com/yschimke/okurl"
  url "https://github.com/yschimke/okurl/releases/download/v4.0.0/okurl-graal-4.0.0.zip"
  version "4.0.0"
  sha256 "e3df4692bd746e26bbac6ad4ba8d902d715ef18b09b8293594997d95a593140b"
  license "Apache-2.0"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"

    zsh_completion.install "#{libexec}/zsh/_okurl" => "_okurl"
  end

  test do
    output = shell_output("#{bin}/okurl --version")
    assert_match "4.0.0", output
  end
end
