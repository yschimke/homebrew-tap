class Githubql < Formula
  desc "GithubQL"
  homepage "https://github.com/yschimke/githubql"
  url "https://github.com/yschimke/githubql/archive/0.1.tar.gz"
  sha256 "f5d79f29c9da227ef40665770afa7cc8463b88f5702132df0389bdc6143a814f"

  depends_on "oksocial"

  def install
    bin.install "commands/githubql"
  end
end
