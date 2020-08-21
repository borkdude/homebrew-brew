class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.13"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.13/jet-0.0.13-linux-amd64.zip"
    sha256 "e09effc645a7e9d478e9aa57c0bfdde1f0dfd26f94a6e8e6241437b59f3672ba"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.13/jet-0.0.13-macos-amd64.zip"
    sha256 "1b18a9a752930b41344362b980da07096ac485415a71de85d00acdc2c2fbde26"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
