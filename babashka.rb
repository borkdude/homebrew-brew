class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.0/babashka-0.2.0-linux-amd64.zip"
    sha256 "dd42b767c0d46cbe1b3c908a4d3c22c139640ed4149e1f7782ec390eadab9bd0"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.0/babashka-0.2.0-macos-amd64.zip"
    sha256 "00b5b13191f91893f2252569ed2010ceae72bd8098c4347f7149f7d964b12233"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
