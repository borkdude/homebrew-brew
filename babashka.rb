class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.80"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.80/babashka-0.0.80-linux-amd64.zip"
    sha256 "ca2431981091acf220ca0a6e0b85755a2bdbb9292b9563391f3af1bbe89fbed4"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.80/babashka-0.0.80-macos-amd64.zip"
    sha256 "233c1bd5f5686fb6b5ed37b14416f8cda4d0b10567d2302dc6d462f944eee2ed"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
