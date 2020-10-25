require 'formula'

class Msg < Formula
  homepage 'https://github.com/paulhammond/msg'
  url 'https://github.com/paulhammond/msg/releases/download/v0.0.1/msg-mac-v0.0.1.tgz'
  version '0.0.1'
  sha256 'a5f196788bdee0048a287ccdc5836657ac48e43d50ebfb0e4e7ef015ef62e971'

  def install
    bin.install 'msg'
  end

  test do
    `msg --help`
  end
end