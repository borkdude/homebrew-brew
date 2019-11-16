class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.29"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.29/babashka-0.0.29-linux-amd64.zip"
    sha256 "1be3b9bd3443d4d0a0462ae99b2dd74fdf74b1f9fe87db46b8bf33aaf3d85876"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.29/babashka-0.0.29-macos-amd64.zip"
    sha256 "f05bb16557bafb4c6ac8958ee288601d2e9c0a56d336890754914184859ffa18"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
