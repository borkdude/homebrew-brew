class Carve < Formula

  desc "Carve out the essentials of your Clojure app."
  homepage "https://github.com/borkdude/carve"
  version "0.1.0"

  if OS.linux?
    url "https://github.com/borkdude/carve/releases/download/v0.1.0/carve-0.1.0-linux-amd64.zip"
    sha256 "fbada9200f161d5c26a5d9c1b3555e1bbf9a287069fa93c0fad7ecc5d1706481"
  else
    url "https://github.com/borkdude/carve/releases/download/v0.1.0/carve-0.1.0-macos-amd64.zip"
    sha256 "d8223581f865c318453564eceac469790510160ae0fad0b034937bb4ed21ef42"
  end

  def install
    bin.install "carve"
  end

end
