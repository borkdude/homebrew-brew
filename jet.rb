class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.9"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.9/jet-0.0.9-linux-amd64.zip"
    sha256 "f6d92dd8137d0d1e31b2a30aad04ad818dfc92b3bb430b81ef44164a80f1b3bb"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.9/jet-0.0.9-macos-amd64.zip"
    sha256 "8053fc46122eb861a0b0e4a89e5d75e9b8cccd86db2143ecaba807eaae4c95d1"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
