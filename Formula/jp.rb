require 'formula'

class Jp < Formula
  homepage 'http://www.paulhammond.org/jp/'
  url 'https://github.com/paulhammond/jp/releases/download/v0.3/jp-mac-v0.3.tgz'
  version '0.3'
  sha256 '617ece7a704423d3230f27d763f2bfe47d9edd07b0dadf44079b1c0151a527c0'

  def install
    bin.install 'jp'
  end

  test do
    `echo '{"foo": "bar" }' | jp -compact - ` == '{"foo":"bar"}'
  end
end