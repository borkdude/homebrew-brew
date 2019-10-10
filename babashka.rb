class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.21"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.21/babashka-0.0.21-linux-amd64.zip"
    sha256 "63d7fe88e2f588f1342cb81734d5b6db2dc214268b0b30f46ca9fee23d0746da"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.21/babashka-0.0.21-macos-amd64.zip"
    sha256 "62ca745889bc275729f79322782d1cedd99d1e599330cb9053d33b381021d29e"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
