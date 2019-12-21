class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.46"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.46/babashka-0.0.46-linux-amd64.zip"
    sha256 "2908e5f4bf21843068a27ca9920c00962dc067b53cc3416ae9e56496ba97a7c6"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.46/babashka-0.0.46-macos-amd64.zip"
    sha256 "39c0bdd69b7f71ac9cbab2d21158667fa0da138f00235dc74c220fa20dbc73d3"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
