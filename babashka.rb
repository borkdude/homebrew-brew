class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.6.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.0/babashka-0.6.0-linux-amd64.tar.gz"
    sha256 "f4822ae2f0ff2c616a8c889aa6ea277d109aa42f67db5cd03a4fd579f6b2fcc0"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.0/babashka-0.6.0-macos-amd64.tar.gz"
    sha256 "acb767ad8e693e875fccbd5206103e4541ddd67ea371c3164f5e562b9231ee50"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
