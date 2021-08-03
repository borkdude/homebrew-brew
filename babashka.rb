class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.5.1"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.5.1/babashka-0.5.1-linux-amd64.tar.gz"
    sha256 "bfd6e39f068fecfc9d0197daf78615b334cc93635056d92d329fd89ce2106b28"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.5.1/babashka-0.5.1-macos-amd64.tar.gz"
    sha256 "d799bdaf242e0c0169154643e506d17fc1a8d062e2885f3d60425decb547a8be"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
