class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.5"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.5/babashka-0.0.5-linux-amd64.zip"
    sha256 "d7898234b83d2695c5d0852c5f57d92a12d866efef64e5ddbd5fc090dcce9214"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.5/babashka-0.0.5-macos-amd64.zip"
    sha256 "be3a1246a5647de5e7fec7e402c0ed6c5e3dabc08360ccc280c6c2e3c539c4be"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
