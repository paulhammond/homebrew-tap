class Bearbag < Formula
  desc "Bear export utility"
  homepage "https://github.com/paulhammond/bearbag"
  url "https://github.com/paulhammond/bearbag.git",
    revision: "035475c65a75c64cfc867efca983c95f1fd4a9e1",
    tag:      "v0.1"
  license "MIT"
  head "https://github.com/paulhammond/bearbag.git",
    branch: "main"

  depends_on xcode: ["11.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "bearbag"
    bin.install ".build/release/bearbag"
  end

  test do
    system "#{bin}/bearbag", "--help"
  end
end
