class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.17"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.17/babashka-0.0.17-linux-amd64.zip"
    sha256 "6a682ba3cdefdc004ed19050bfdecb29ef64b0bd4bd1e81a9a337961b07c9813"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.17/babashka-0.0.17-macos-amd64.zip"
    sha256 "79974547bc6be56d4b7d9d213bd0f5cd63eeb510fea83d47023ef420caebecb8"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
