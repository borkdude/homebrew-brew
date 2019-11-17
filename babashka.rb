class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.30"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.30/babashka-0.0.30-linux-amd64.zip"
    sha256 "36a610024fef48de6dd90b37c7782798cc206baf77413304371964123c9df7d6"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.30/babashka-0.0.30-macos-amd64.zip"
    sha256 "1b1126f09afa6c23d8da6ad2b177dacc75b0796812c6bfae1c29750508b6222c"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
