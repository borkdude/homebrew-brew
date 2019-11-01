class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.25"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.25/babashka-0.0.25-linux-amd64.zip"
    sha256 "c2999ff30f9b8f12d7076fd6ff2ea6cf095e6ea962f1722e1bbe2c1e3c6531d1"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.25/babashka-0.0.25-macos-amd64.zip"
    sha256 "0293845cd8a6d69e4da46536eceb1dd9a97d0cb263c3c439156281b80be856a0"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
