class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.65"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.65/babashka-0.0.65-linux-amd64.zip"
    sha256 "74cab04b5bce644df07560b80ac3572a7eeff1e8f88f9c23bae959e60a9e486d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.65/babashka-0.0.65-macos-amd64.zip"
    sha256 "4776be34de565c00934496712531ae9f27642b8b63d99024425f09623f47167e"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
