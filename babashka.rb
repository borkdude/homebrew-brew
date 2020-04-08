class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.81"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.81/babashka-0.0.81-linux-amd64.zip"
    sha256 "32ae5f749b4b34f1e9a4a9a4b16e44b7f588227cf55d2d331f330a69efd64511"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.81/babashka-0.0.81-macos-amd64.zip"
    sha256 "14a99c5ee3d4b70399a4bd8454b54d077eb0c7d87774bb20f52ef2905d3d313b"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
