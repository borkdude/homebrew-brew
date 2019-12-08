class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.39"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.39/babashka-0.0.39-linux-amd64.zip"
    sha256 "2edc2f24785d5f36c1ea4021a776db0a4d1d39bad13ca60e68336a4963426e4f"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.39/babashka-0.0.39-macos-amd64.zip"
    sha256 "6d05e6c8798b2c0c6ea5f1732293b0424decd0528677baaac5cee20db55c0abf"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
