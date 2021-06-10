class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.5"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.5/babashka-0.4.5-linux-amd64.tar.gz"
    sha256 "53cccb53fe70455d2557f60604adf63d5ea322ae8515d8b9e65c03a795fca5e1"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.5/babashka-0.4.5-macos-amd64.tar.gz"
    sha256 "0bbbfc44cc1bdf5879809340a5d7dc71a2d72d73c9f48f07d4e5414a7a6bed4b"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
