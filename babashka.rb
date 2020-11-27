class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.4"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.4/babashka-0.2.4-linux-amd64.zip"
    sha256 "d56ff45b80226685bf2f804718780a82d30cffa4bda701a28cb170de176bc1fa"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.4/babashka-0.2.4-macos-amd64.zip"
    sha256 "65933e5b598e8b82762f856b8e942ee459db482ad73f704185b2706ccf8b0818"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
