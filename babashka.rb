class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.35"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.35/babashka-0.0.35-linux-amd64.zip"
    sha256 "35ed3b8e50011ab1d30f528f394fb9076f034af9be575b4d4c4539d85568563d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.35/babashka-0.0.35-macos-amd64.zip"
    sha256 "da2c63910d34b9146d735a774d18a3a857233fea7f319154786231f53468e159"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
