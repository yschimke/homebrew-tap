class Okurl < Formula
  desc "OkUrl"
  homepage "https://github.com/yschimke/okurl"
  version "1.62.0"
  url "https://github.com/yschimke/okurl/releases/download/#{version}/okurl-#{version}.tgz"
  sha256 "023ca7f9571e9d6979db7874c5ba423b64edae2311b8e4b4b359afdc38dc62a9"

  depends_on :java => :optional
  depends_on "bash-completion" => :recommended
  depends_on "jq" => :recommended

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/okscript", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    inreplace "#{libexec}/bin/okurl", /^export INSTALLDIR.*/, "export INSTALLDIR=#{libexec}"
    bin.install_symlink "#{libexec}/bin/okurl" => "okapi"
    bin.install_symlink "#{libexec}/bin/okurl" => "okws"
    bin.install_symlink "#{libexec}/bin/4sqapi"
    bin.install_symlink "#{libexec}/bin/cronhub-ping"
    bin.install_symlink "#{libexec}/bin/fbapi"
    bin.install_symlink "#{libexec}/bin/githubapi"
    bin.install_symlink "#{libexec}/bin/mapboxapi"
    bin.install_symlink "#{libexec}/bin/okscript"
    bin.install_symlink "#{libexec}/bin/okurl"
    bin.install_symlink "#{libexec}/bin/sorecent.kts" => "sorecent"
    bin.install_symlink "#{libexec}/bin/twitterapi"
    bin.install_symlink "#{libexec}/bin/tweetsearch.kts" => "tweetsearch"
    bin.install_symlink "#{libexec}/bin/uberprices.kts" => "uberprices"

    bash_completion.install "#{libexec}/bash/completion.bash" => "okurl"
  end

  test do
    system "#{bin}/okurl" "https://api.twitter.com/robots.txt"
  end
end
