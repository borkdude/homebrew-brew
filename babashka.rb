class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.58"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.58/babashka-0.0.58-linux-amd64.zip"
    sha256 "4c00140783708c111baa1f06c2140090bb8b451175ada879c1ca5f191e1f9930"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.58/babashka-0.0.58-macos-amd64.zip"
    sha256 "d68be9063768e1e53a70fa69d0c785791f70565d590ae8d619dda7ff2ddea30e"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
