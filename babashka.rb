class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.37"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.37/babashka-0.0.37-linux-amd64.zip"
    sha256 "332664f0fd007cedcb7c7fd1a44a24a198e6c543ef6ed9a8691b148870609a5b"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.37/babashka-0.0.37-macos-amd64.zip"
    sha256 "912158fe2b15ead18f44853f4c4f7f788d72387c3222dc608e60552f2d820458"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
