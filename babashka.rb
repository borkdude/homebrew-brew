class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.82"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.82/babashka-0.0.82-linux-amd64.zip"
    sha256 "7dd97dd785bf3fe11214d8ad93260fb10b4be661488919b338178423d0545746"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.82/babashka-0.0.82-macos-amd64.zip"
    sha256 "832cfcdeac6bf443745ddaec4128d1539a89446f29365dbd2e72698be14a9149"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
