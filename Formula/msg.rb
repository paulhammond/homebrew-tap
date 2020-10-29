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

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X github.com/paulhammond/msg/internal/msg.version=v#{version}", "-trimpath", "-o", bin/"msg", "./cmd/msg"
  end

  test do
    `msg --help`
  end
end