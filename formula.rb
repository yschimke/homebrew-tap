
# {{jreleaserCreationStamp}}
class {{brewFormulaName}} < Formula
  desc "{{projectDescription}}"
  homepage "{{projectWebsite}}"
  url "{{distributionUrl}}"
  version "{{projectVersion}}"
  sha256 "{{distributionChecksumSha256}}"
  license "{{projectLicense}}"

  {{#brewHasLivecheck}}
  livecheck do
    {{#brewLivecheck}}
    {{.}}
    {{/brewLivecheck}}
  end
  {{/brewHasLivecheck}}
  {{#brewDependencies}}
  depends_on {{.}}
  {{/brewDependencies}}

  def install
    zsh_completion.install "#{libexec}/zsh/_okurl" => "_neo4j-migrations"

    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/{{distributionExecutable}}"
  end

  test do
    output = shell_output("#{bin}/{{distributionExecutable}} --version")
    assert_match "{{projectVersion}}", output
  end
end