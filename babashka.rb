class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.16"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.16/babashka-0.0.16-linux-amd64.zip"
    sha256 "95a87fce9c3c71c9e8b68d0db53e6fd2f00bee7bb752cc4be9e931666ba7c0c5"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.16/babashka-0.0.16-macos-amd64.zip"
    sha256 "bd9392e9e7581893ed897a2a2776f3dc7edd906cfca3b574a356eb4f61cf7972"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
