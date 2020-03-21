class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.78"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.78/babashka-0.0.78-linux-amd64.zip"
    sha256 "556ec06783d22754a3aeed3427b8c6673d1bec58456e536d176fdfc0750d3848"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.78/babashka-0.0.78-macos-amd64.zip"
    sha256 "6809dabcf420f815fd7c29f624c8b2520a697064d3052f52af21067aec86ee27"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
