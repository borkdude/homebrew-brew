class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.6"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.6/babashka-0.4.6-linux-amd64.tar.gz"
    sha256 "7558f8a189ce40ff8e9871010e792360ec5c03a8eee87cc85e38f48c562a6e70"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.6/babashka-0.4.6-macos-amd64.tar.gz"
    sha256 "8fd778592b0f821b69096fbbb9838f7b24c0f9090e68d0296098facab79d7c5a"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
