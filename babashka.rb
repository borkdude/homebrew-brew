class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.5"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.5/babashka-0.2.5-linux-amd64.zip"
    sha256 "e01d65d8099598638028c3935218dd4a1e139183db68faba810b8a9804aa40e4"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.5/babashka-0.2.5-macos-amd64.zip"
    sha256 "67506feaec82c4ae5f4cb46265afcec5da504e91c0035dae3d3f69f65f39f8a2"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
