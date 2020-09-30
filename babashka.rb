class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.2/babashka-0.2.2-linux-amd64.zip"
    sha256 "3650a8c7c51732aff2d1d0464e36240d2244709f1466b90142c2bf3b244843a7"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.2/babashka-0.2.2-macos-amd64.zip"
    sha256 "b1f1240d50ca7ffa300f25be8428f6d8de5e36014d624eb67f1a6f29ec70bdad"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
