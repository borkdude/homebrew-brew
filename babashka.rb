class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.4"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.4/babashka-0.3.4-linux-amd64.tar.gz"
    sha256 "faa0cfa0e02f6ce456d837e59deca3664e10f10070b894c0a5f85b8c93f8885d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.4/babashka-0.3.4-macos-amd64.tar.gz"
    sha256 "da69829ab3c9cf8a97046c3539919ad5f18af6c5c4296b6be34356a29b0ef8d3"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
