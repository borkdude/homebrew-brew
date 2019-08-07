class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.7"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.7/jet-0.0.7-linux-amd64.zip"
    sha256 "6992527d14251d32d5827f55c30dbaf20d5df9e6109a9777cbfe4c1e7f7ef4db"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.7/jet-0.0.7-macos-amd64.zip"
    sha256 "aabfd44fac21dc66af6fc4382df68d3dac947ad90fd73bc187512e60d9bf830d"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
