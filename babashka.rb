class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.36"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.36/babashka-0.0.36-linux-amd64.zip"
    sha256 "a92b29e8e61692468e1c590bf3897c0fbbded1cef54ff438d664811e5973ce36"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.36/babashka-0.0.36-macos-amd64.zip"
    sha256 "db72a6b6149446eb4b5d87f7c6adbfc52c4f3a3cb6fb0af56bf38c1992a6e74c"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
