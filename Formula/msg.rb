require 'formula'

class Msg < Formula
  desc "My Site Generator"
  homepage 'https://github.com/paulhammond/msg'
  url "https://github.com/paulhammond/msg.git",
    revision: "ddd1bc488e5ef8384e667b0ffc5235e12e7438e9",
    tag:      "v0.0.2"
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