class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.6.26"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.6.26/jet-0.6.26-linux-amd64.tar.gz"
    sha256 "1bf9325ec2067e0857a5cb9f2e13b99e75f032fe10bd1d1bfddd1eeaf9b15bd9"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/jet/releases/download/v0.6.26/jet-0.6.26-macos-aarch64.tar.gz"
      sha256 "dcd616009706ff2acf2bfa29c90009e116939de8acb93a1e4d18782e80cd0ef9"
    else url "https://github.com/borkdude/jet/releases/download/v0.6.26/jet-0.6.26-macos-amd64.tar.gz"
      sha256 "3626b19df214ee5c5aff5923e1e00475f9577cacec2779d9d26d2842c7e7bfe2"
    end
  end

  def install
    bin.install "jet"
  end

end
