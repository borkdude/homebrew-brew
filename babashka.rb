class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.7"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.7/babashka-0.3.7-linux-amd64.tar.gz"
    sha256 "ac0d3434179bc3297175f39240acd11958b3b5cba361eac9f17f2dc0f1b2aefc"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.7/babashka-0.3.7-macos-amd64.tar.gz"
    sha256 "26ede55875b6b6cfada7ad5e75db84c55d0aa295aca8229072a832267475a036"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
