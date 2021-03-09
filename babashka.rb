class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.13"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.13/babashka-0.2.13-linux-amd64.zip"
    sha256 "7fb8a5815a343698d0d66dad5da2d6631fbe4cf97b7a21ac52c5d10dbe3a7c2c"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.13/babashka-0.2.13-macos-amd64.zip"
    sha256 "1de34d1d7a2d59904e71d64d525352e73b87bbfd44accc8ca8f8ccbfa5a5ebd2"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
