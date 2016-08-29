class Sheetsuapi < Formula
  desc "Sheetsuapi"
  homepage "https://github.com/yschimke/abitsheet"
  url "https://github.com/yschimke/abitsheetsu/releases/download/0.9/abitsheetsu-0.9-bundle.tar.gz"
  sha256 "a532a440f0ca21c5492890ec3933a841a1f90bde87029a6a74597fcd6df8ae46"

  depends_on "oksocial"

  def install
    bin.install "bin/sheetsuapi"
    
    (var/"oksocial/plugins/sheetsuapi").install "lib"
  end
end
