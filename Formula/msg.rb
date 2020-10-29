require 'formula'

class Msg < Formula
  desc "My Site Generator"
  homepage 'https://github.com/paulhammond/msg'
  url "https://github.com/paulhammond/msg.git",
    revision: "1027ab0861b0ae65d385f764d18b3e8ff59ff0b3",
    tag:      "v0.0.1"
  revision 1
  head "https://github.com/paulhammond/msg.git"
  license "MIT"

  bottle do
    root_url "https://github.com/paulhammond/homebrew-tap/releases/download/bottles/"
    cellar :any_skip_relocation
    sha256 "77e506ee4ee5eb87003cb637977bc8b1063c79381da94b5f6c241116a52a5f4a" => :big_sur
    sha256 "69ea92b1f1c63c8ef0513258162d9aa8e3956e2ced738acdaa675a142486cbaf" => :catalina
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X github.com/paulhammond/msg/internal/msg.version=v#{version}", "-trimpath", "-o", bin/"msg", "./cmd/msg"
  end

  test do
    `msg --help`
  end
end