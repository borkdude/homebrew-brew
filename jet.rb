class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.5"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.5/jet-0.0.5-linux-amd64.zip"
    sha256 "2535a2945dbf6e41a8490b4c95ff84f8650d8da8e860964891f81ad717a60f90"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.5/jet-0.0.5-macos-amd64.zip"
    sha256 "404c1b6f1ae856c66e7dddd06a0314ca562d06c8454609e72113d428d55ba95f"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
