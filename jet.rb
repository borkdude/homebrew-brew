class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.3"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.3/jet-0.0.3-linux-amd64.zip"
    sha256 "177092b3a6189bf972029541a899521953a4ec3c90d6f018ee9efdcc849c92ef"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.3/jet-0.0.3-macos-amd64.zip"
    sha256 "c2c62b28e51d9ca146b076777ade53e35cd06476c02c932f0d79ea07d51925b8"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
