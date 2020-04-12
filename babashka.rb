class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.83"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.83/babashka-0.0.83-linux-amd64.zip"
    sha256 "26125bf12ef5ac987ffcd3b4f2293b348aaa60937214a94d4302577417595dda"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.83/babashka-0.0.83-macos-amd64.zip"
    sha256 "b8677d3446f2127c09c7ff2cffa559a398918260aeb93b3150742ef9204620eb"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
