class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.1/jet-0.0.1-linux-amd64.zip"
    sha256 "f4c5d1b58ee2b0851869d2fe7d93d2a4928b4a24e805d73797bb8f5f39c345d5"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.1/jet-0.0.1-macos-amd64.zip"
    sha256 "e1fff50fa6a6810524d2c177b7d82b10e84f8795bc5d75b93e5fdbfe5264fa1a"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
