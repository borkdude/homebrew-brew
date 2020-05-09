class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.94"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.94/babashka-0.0.94-linux-amd64.zip"
    sha256 "e419673397997c03d8914b00375a41f39610cebeaf04b4ec8f3b48b4b271705e"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.94/babashka-0.0.94-macos-amd64.zip"
    sha256 "3546d4689effd771a30240f697be14f2c9d7e54e748f2c465a80b151bd740e08"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
