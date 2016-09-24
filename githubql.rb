class Githubql < Formula
  desc "GithubQL"
  homepage "https://github.com/yschimke/githubql"
  url "https://github.com/yschimke/githubql/archive/0.2.tar.gz"
  sha256 "416d6b49d6d1553fed211c239347705d3cae0affc385e82cf6e2e567a56e3c64"

  depends_on "oksocial"

  def install
    bin.install "commands/githubql"
  end
end
