class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.7.27"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.7.27/jet-0.7.27-linux-amd64.tar.gz"
    sha256 "411e65cbe6ea94ea6994e22723cbc73843c715e29828cb3fb8ca6c5af639a68d"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/jet/releases/download/v0.7.27/jet-0.7.27-macos-aarch64.tar.gz"
      sha256 "e8e7ad17e87e8f2b0fdc3bfac44d1c7a7537c2cd36e02056f44ecb91d1690c0e"
    else url "https://github.com/borkdude/jet/releases/download/v0.7.27/jet-0.7.27-macos-amd64.tar.gz"
      sha256 "40a3ac0c7efc4c1d661a3d9146ffc34f71bb633c742f924253bd85e9e2dcb50e"
    end
  end

  def install
    bin.install "jet"
  end

end
