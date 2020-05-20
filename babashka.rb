class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.97"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.97/babashka-0.0.97-linux-amd64.zip"
    sha256 "11085ad3452d6f3122554b2e85bc8eec9d0a8b7e6db3b112355aac5b95838aac"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.97/babashka-0.0.97-macos-amd64.zip"
    sha256 "69d18a8d1b3719a8805b9989be780174b509efab2cdf09495301c522c5374b73"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
