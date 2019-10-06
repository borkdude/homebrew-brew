class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.20"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.20/babashka-0.0.20-linux-amd64.zip"
    sha256 "7d539c43fb01487ef8e30d6daa356e33737075cedbb07d949f0d3416922345a1"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.20/babashka-0.0.20-macos-amd64.zip"
    sha256 "377ac3a64307d79cfe836883237179c9df387933bc572b0cd020b63365bff242"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
