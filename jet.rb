class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.8"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.8/jet-0.0.8-linux-amd64.zip"
    sha256 "58f8cdb5a18897a41326298ffef66efae52e688ce358553a84e30e7df36867d3"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.8/jet-0.0.8-macos-amd64.zip"
    sha256 "960e2f20b704f9fa8b007722353144c901ac7b3deaad7e448c1967d2f2ed558a"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
