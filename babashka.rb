class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.6"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.6/babashka-0.2.6-linux-amd64.zip"
    sha256 "95225739d08cae0f6f5eeb6fa00143d06cd7db6c0525fdafa41661aae617a1a5"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.6/babashka-0.2.6-macos-amd64.zip"
    sha256 "8b6569fe2937c2e7fd11842a7214bb7442b0dd287bd4ffb95dddb904ddb200fe"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
