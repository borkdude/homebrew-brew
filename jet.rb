class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.2"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.2/jet-0.0.2-linux-amd64.zip"
    sha256 "da201590484aaa74fff13f37fb370dac6b315f651ae28ac9a043eff0d7121a35"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.2/jet-0.0.2-macos-amd64.zip"
    sha256 "71d1e95b033d46832de5f23a1698859dc6318a2d5866690e30f778f7e4c058a0"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
