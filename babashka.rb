class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.62"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.62/babashka-0.0.62-linux-amd64.zip"
    sha256 "9e000cd94ac2ef09584805624e217a936f638bd19936feb30ea238d1346ef80d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.62/babashka-0.0.62-macos-amd64.zip"
    sha256 "cec6339394aab8af9269352d5f3c67511af2c520206b968881c99668d15ea480"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
