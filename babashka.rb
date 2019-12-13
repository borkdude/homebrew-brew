class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.41"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.41/babashka-0.0.41-linux-amd64.zip"
    sha256 "d0900a5fe95e50cefce5a1892a77b42e478af87e284e5f68918455fb10c6d440"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.41/babashka-0.0.41-macos-amd64.zip"
    sha256 "a0ebad0d7c9824f05ca072a6b8bc877727b8b060d1147e2ad703a612e8bf0755"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
