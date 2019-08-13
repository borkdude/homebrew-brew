class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.6"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.6/babashka-0.0.6-linux-amd64.zip"
    sha256 "131d54d0e1b60e203bfe6a43896f2f21e41654bc8e7e2496a067bf2c921e0bac"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.6/babashka-0.0.6-macos-amd64.zip"
    sha256 "87573596ed5070541b54b1bdc0421f33116b68f879b7aa4d38233c87d0744180"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
