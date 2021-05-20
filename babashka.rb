class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.3"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.3/babashka-0.4.3-linux-amd64.tar.gz"
    sha256 "8d1b457811f57152b9d40301ccc208fe6d31185896cd4fc05be3624296a4fa9f"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.3/babashka-0.4.3-macos-amd64.tar.gz"
    sha256 "9a9af0f7ddc7ff1db1bc52ae27e1803d991d7ac88dab3d2f5fbd72c1ef7e9582"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
