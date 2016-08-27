class Sheetsuapi < Formula
  desc "Sheetsuapi"
  homepage "https://github.com/yschimke/abitsheet"
  url "file:///Users/yschimke/workspace/abitsheet/target/abitsheet-0.9-SNAPSHOT-bundle.tar.gz"
  sha256 "5cb014660f031ab86cfb564c26142bf4f99ab8bd04566b2df1e10710d53aa409"

  depends_on "yschimke/tap/oksocial"

  def install
    bin.install "bin/sheetsuapi"
    (share/"oksocial/plugins/sheetsuapi").install "lib"
  end
end
