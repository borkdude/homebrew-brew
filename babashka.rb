class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.11"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.11/babashka-0.2.11-linux-amd64.zip"
    sha256 "38ed193027b2b1ac79efc30fc355eec33d32886e9e2c85d4b418f0541d76a091"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.11/babashka-0.2.11-macos-amd64.zip"
    sha256 "8cd7e54a5c766c3d401268a917071663e0aec092f0a31a06bca4cc18b07bdacd"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
