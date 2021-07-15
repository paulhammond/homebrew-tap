class Jp < Formula
  homepage "https://paulhammond.org/jp"
  url "https://github.com/paulhammond/jp.git",
    revision: "8ad2851b05f0b89b60512970700140967ad14ec9",
    tag:      "v0.3"
  license "MIT"
  revision 1
  head "https://github.com/paulhammond/jp.git"

  bottle do
    root_url "https://github.com/paulhammond/homebrew-tap/releases/download/bottles/"
    sha256 cellar: :any_skip_relocation, big_sur:  "04331eaccb28c6db7c74a9ced0681e7feeb558fa737cc9e4b7b2b8b09af2bfd3"
    sha256 cellar: :any_skip_relocation, catalina: "b0731101a35b23c0277777c6b0ab4c33e90b57ffd32cb7682c905956e420a6fb"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"jp", "./jp"
  end

  test do
    `echo '{"foo": "bar" }' | jp -compact - ` == '{"foo":"bar"}'
  end
end
