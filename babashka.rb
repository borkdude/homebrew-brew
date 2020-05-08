class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.93"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.93/babashka-0.0.93-linux-amd64.zip"
    sha256 "7e49e41450d2fc013525cd179f48dcb989efbb115d59ee361eaad5f6ef9b6a1d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.93/babashka-0.0.93-macos-amd64.zip"
    sha256 "7ae6af51cece597d032926a5c507d1e15e867eea20b07a27fbd6f6552bfa652d"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
