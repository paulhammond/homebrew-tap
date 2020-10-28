class Jp < Formula
  homepage 'https://paulhammond.org/jp'
  url "https://github.com/paulhammond/jp.git",
    revision: "8ad2851b05f0b89b60512970700140967ad14ec9",
    tag:      "v0.3"
  revision 1
  head "https://github.com/paulhammond/jp.git"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"jp", "./jp"
  end

  test do
    `echo '{"foo": "bar" }' | jp -compact - ` == '{"foo":"bar"}'
  end
end