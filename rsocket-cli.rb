class RsocketCli < Formula
  desc "RSocket CLI"
  homepage "https://github.com/yschimke/reactivesocket-cli"
  version "1.0.0"
  url "https://github.com/rsocket/rsocket-cli/releases/download/#{version}/rsocket-cli-#{version}.tar"
  sha256 "6fd0410056bd6fbe8fa808f90f5762d2b75ce27631a269c6e8459b8c2dc2a923"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/rsocket-cli", /^DEFAULT_JVM_OPTS=.*/, "DEFAULT_JVM_OPTS=-Xbootclasspath/p:#{libexec}/lib/alpn-boot-8.1.11.v20170118.jar"
    bin.install_symlink "#{libexec}/bin/rsocket-cli"
    bash_completion.install "#{libexec}/bash/completion.bash" => "rsocket-cli"
  end
end
