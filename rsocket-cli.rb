class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/rsocket/rsocket-cli/releases/download/0.0.14/rsocket-cli-0.0.14.tar"
  version "0.0.14"
  sha256 "28855961ed011827b3e6ace9ecd96fd9496cd773ef714db3c5f0c618f3a8f8fd"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/rsocket-cli", /^DEFAULT_JVM_OPTS=.*/, "DEFAULT_JVM_OPTS=-Xbootclasspath/p:#{libexec}/lib/alpn-boot-8.1.11.v20170118.jar"
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
