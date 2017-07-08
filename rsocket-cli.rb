class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  url "https://github.com/ReactiveSocket/reactivesocket-cli/releases/download/0.0.13/rsocket-cli-0.0.13.tar"
  version "0.0.13"
  sha256 "0a3db2aabfd4e96f199ee013e840d9fe9a60cce6fc02645a893cea36a8c9d44d"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/rsocket-cli", /^DEFAULT_JVM_OPTS=.*/, "DEFAULT_JVM_OPTS=-Xbootclasspath/p:#{libexec}/lib/alpn-boot-8.1.11.v20170118.jar"
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
