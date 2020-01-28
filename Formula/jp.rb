require 'formula'

class Jp < Formula
  homepage 'http://www.paulhammond.org/jp/'
  url 'https://github.com/paulhammond/jp/releases/download/v0.2/mac.tgz'
  version '0.2'
  sha256 '6346d78b64804974434c9518f3b2c0862d1545af773e9b740a9e781f9d046a88'

  def install
    bin.install 'jp'
  end

  test do
    `echo '{"foo": "bar" }' | jp -compact - ` == '{"foo":"bar"}'
  end
end