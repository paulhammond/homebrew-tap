require 'formula'

class Msg < Formula
  desc "My Site Generator"
  homepage 'https://github.com/paulhammond/msg'
  url "https://github.com/paulhammond/msg.git",
    revision: "ddd1bc488e5ef8384e667b0ffc5235e12e7438e9",
    tag:      "v0.0.2"
  head "https://github.com/paulhammond/msg.git"
  license "MIT"

  bottle do
    root_url "https://github.com/paulhammond/homebrew-tap/releases/download/bottles/"
    cellar :any_skip_relocation
    sha256 "1943061250f801827a189670d6d2a182976e93471671700ed5c798b95489e778" => :big_sur
    sha256 "12902906db3c8d95a3925c61ab44effdbfb331d5204a20b8f5e0266e8abe821c" => :catalina
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X github.com/paulhammond/msg/internal/msg.version=v#{version}", "-trimpath", "-o", bin/"msg", "./cmd/msg"
  end

  test do
    `msg --help`
  end
end