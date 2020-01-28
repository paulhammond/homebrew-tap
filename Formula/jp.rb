require 'formula'

class Jp < Formula
  homepage 'http://www.paulhammond.org/jp/'
  url 'https://github.com/paulhammond/jp/releases/download/v0.2/mac.tgz'
  version '0.2'
  sha1 '65e5cb43af3a7f4e1567914c53b764aca204714c'

  def install
    bin.install 'jp'
  end

  test do
    `echo '{"foo": "bar" }' | jp -compact - ` == '{"foo":"bar"}'
  end
end