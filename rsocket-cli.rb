class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.8.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tgz"
  sha256 "b1df70b795bdd07ed8d3929923c5936052f0fae8dc3161d37955fec66ea3bf1f"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/rsocket-cli", /^DEFAULT_JVM_OPTS=.*/, "DEFAULT_JVM_OPTS=-Xbootclasspath/p:#{libexec}/lib/alpn-boot-8.1.11.v20170118.jar"
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
