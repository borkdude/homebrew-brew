class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.23"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.23/babashka-0.0.23-linux-amd64.zip"
    sha256 "e3f7ea5fca93f194fd68bbe8042c32854c9a9f550fa2236dc41549cb5ad7c82d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.23/babashka-0.0.23-macos-amd64.zip"
    sha256 "35734fd7b290f9932e310a329b0fbab0469665040c0558770b8d011903bd1d22"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
