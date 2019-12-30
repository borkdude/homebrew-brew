class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.55"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.55/babashka-0.0.55-linux-amd64.zip"
    sha256 "7d14e47867d8065db80109598e22166e0e86a52ac481b17d7d09e45ae57b736d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.55/babashka-0.0.55-macos-amd64.zip"
    sha256 "76838aebf4ce1ea6d536b4f0bcf51d7bc9c761490240c3b87c6bd26ed7608e31"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
