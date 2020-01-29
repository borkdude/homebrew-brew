class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.67"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.67/babashka-0.0.67-linux-amd64.zip"
    sha256 "d7e9e8fecc6985c11c584420510ace74929744428e8acd8a746e75a24223e66c"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.67/babashka-0.0.67-macos-amd64.zip"
    sha256 "e4caef61ac26b4565f5e63a615bd076a40c049e9ef75ec988c9dcc9fbc51d379"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
