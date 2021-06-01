class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.4"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.4/babashka-0.4.4-linux-amd64.tar.gz"
    sha256 "a90c6e9602e8a8b2f7dbc2e7d3dbb58a9b68e73a1c2893553f84a6dd74ebada2"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.4/babashka-0.4.4-macos-amd64.tar.gz"
    sha256 "eae89610acf7809b363e2fc84b63ec1fe7b43e75aed34da4a9bd0599c73348e1"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
