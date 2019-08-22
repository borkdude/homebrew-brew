class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.10"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.10/jet-0.0.10-linux-amd64.zip"
    sha256 "264d5087fa30f3ef8b2d1d6d2391442147cedecfa4cc9da60a3911331547d3b4"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.10/jet-0.0.10-macos-amd64.zip"
    sha256 "318030aad5d24834aebf2c43916d3c23b0630ada9b7278e381a98721e7b6eb27"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
