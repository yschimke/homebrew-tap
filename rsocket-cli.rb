class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.2.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tgz"
  sha256 "03eb3da47e55ecd5479277cdc928ce7582ee167efac68d15550b7fa2b15df598"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/rsocket-cli", /^DEFAULT_JVM_OPTS=.*/, "DEFAULT_JVM_OPTS=-Xbootclasspath/p:#{libexec}/lib/alpn-boot-8.1.11.v20170118.jar"
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
