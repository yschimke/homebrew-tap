class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "2.24"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-graal-#{version}.tar"
  sha256 "267a48952898cbc748a7643665dd1c42f4b80875f4afbb5cccfbfd208f092585"

  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/okurl"
    zsh_completion.install "#{libexec}/zsh/_okurl"
  end
end
