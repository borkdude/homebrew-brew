class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.66"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.66/babashka-0.0.66-linux-amd64.zip"
    sha256 "2d4d043c87ea715c5a9504fc674c30124e768de52c1ced5911715235b7c3df00"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.66/babashka-0.0.66-macos-amd64.zip"
    sha256 "a02373c4aae87b2d5c090ba84cdf152b88bf02b847d13e709f82d817e5d4fdb3"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
