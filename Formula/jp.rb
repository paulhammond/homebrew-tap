class Jp < Formula
  desc "jp JSON reformatter"
  homepage "https://paulhammond.org/jp"
  license "MIT"
  version "1.0"

  on_macos do
    on_intel do
      url "https://github.com/paulhammond/jp/releases/download/v1.0/jp-macos-amd64-v1.0.tgz"
      sha256 "58a742369fdb4c6a85d6965441450d961f3e8bb61e1319af5c762962b5545d52"
    end
    on_arm do
      url "https://github.com/paulhammond/jp/releases/download/v1.0/jp-macos-arm64-v1.0.tgz"
      sha256 "af733fa19b041e28930f760f8a0ea980926cb30df915da92517e2d360babcdfa"
    end
  end

  def install
    bin.install "jp"
  end

  test do
    `echo '{"foo": "bar" }' | jp --compact - ` == '{"foo":"bar"}'
  end
end
