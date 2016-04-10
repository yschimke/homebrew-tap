class Jacksonjq < Formula
  desc "Jackson jq command line JSON processor"
  homepage "https://github.com/eiiches/jackson-jq"
  version "0.0.4"
  url "http://central.maven.org/maven2/net/thisptr/jackson-jq-cli/0.0.4/jackson-jq-cli-0.0.4.jar"
  sha256 "59672b3bb7b74d31be0c4bc97a2572ebfaacd246a9bf05ef8f23aaf3f7cf488f"

  bottle :unneeded

  def install
    libexec.install "jackson-jq-cli-#{version}.jar"
    bin.write_jar_script libexec/"jackson-jq-cli-#{version}.jar", "jackson-jq"
  end
end
