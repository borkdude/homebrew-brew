class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.5"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.5/babashka-0.3.5-linux-amd64.tar.gz"
    sha256 "906a3fa15a8f5d5455a5b02718e47e3bb78a1813f11d9a67ecaa4421dc837360"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.5/babashka-0.3.5-macos-amd64.tar.gz"
    sha256 "038b17a1086d210f4d3e760f78d35f883c0f3ed179a19fbf6416813a153f4ac4"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
