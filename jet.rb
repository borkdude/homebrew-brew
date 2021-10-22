class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.15"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.15/jet-0.0.15-linux-amd64.zip"
    sha256 "a7a87e11fb98b9b36501405aeda9d285ce974539282d51e0a3101c5bbb82cac0"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.15/jet-0.0.15-macos-amd64.zip"
    sha256 "40da55fa93175c795f65eed36094cd670131d6ceb18a0e1886c1b0cab02e9846"
  end

  def install
    bin.install "jet"
  end

end
