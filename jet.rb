class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.4"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.4/jet-0.0.4-linux-amd64.zip"
    sha256 "82e8c1a43843bac1bfb3109b520ea861cd77943ad936df81878de441e776b506"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.4/jet-0.0.4-macos-amd64.zip"
    sha256 "1b17f36d0082be1ed4be26263203f20f35c29969bf9b56734fee066f3e5ee96c"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
