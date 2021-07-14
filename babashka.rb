class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.5.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.5.0/babashka-0.5.0-linux-amd64.tar.gz"
    sha256 "1f5729b324fc307680b0bb981c0273f7f98002919f6fea4de91ff5048118733c"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.5.0/babashka-0.5.0-macos-amd64.tar.gz"
    sha256 "e1904a61187c4707acca5c4db914f358072a8cf829597e85af4d909f8c7cdbec"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
