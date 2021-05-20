class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.2/babashka-0.4.2-linux-amd64.tar.gz"
    sha256 "38c48201b0097d69c969fb408b4dd8fe9d9898ddaf7083daa94dd173a0803128"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.2/babashka-0.4.2-macos-amd64.tar.gz"
    sha256 "c111f4c5aed3dcd979a87d7a2fe116ac8bd704fccaf68f5d8f7dcdc864c3ae21"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
