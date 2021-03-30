class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.1"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.1/babashka-0.3.1-linux-amd64.tar.gz"
    sha256 "943249a485d42a88c6bc6f7c9cde780039af2dbda8630213451bb9a001562d12"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.1/babashka-0.3.1-macos-amd64.tar.gz"
    sha256 "95675a8baceb79a3736778e0e9f366f573be8f86856899de51ce4a702e4bbb4d"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
