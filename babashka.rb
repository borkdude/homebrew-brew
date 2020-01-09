class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.61"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.61/babashka-0.0.61-linux-amd64.zip"
    sha256 "f1b3d444ff12583a982c27d722bf3dc306b43ca2370e9d6c5802d4362d527ce0"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.61/babashka-0.0.61-macos-amd64.zip"
    sha256 "b70b3ab6b0b36fa64e084e648d2a043433969923091b7cda65a9cc3f9ac9836e"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
