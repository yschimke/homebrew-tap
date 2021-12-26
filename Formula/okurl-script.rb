class OkurlScript < Formula
  desc "OkurlScript"
  homepage "https://github.com/yschimke/okurl-script"
  version "1.0.1"
  url "https://jitpack.io/com/github/yschimke/okurl-script/#{version}/okurl-script-#{version}.tar"
  sha256 "597724825c40d4228fa686b1ee72116db01671d5cada47c7b59ad507ae381403"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okscript"
    zsh_completion.install "#{libexec}/zsh/_okscript"
  end
end
