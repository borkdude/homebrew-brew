class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.34"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.34/babashka-0.0.34-linux-amd64.zip"
    sha256 "95543ca1e7226be0cb2118a04b4f8f610dfd914f1300829e4eb043e648c72787"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.34/babashka-0.0.34-macos-amd64.zip"
    sha256 "58a96a06a317048ffc54b134a6ded98f8286514532438dad74aac0385704aaa4"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
