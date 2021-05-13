class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.1"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.1/babashka-0.4.1-linux-amd64.tar.gz"
    sha256 "3cb19f158b9f1655e0165b6c4067d35faaa05882bbdb230616c91085b02b5bf3"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.1/babashka-0.4.1-macos-amd64.tar.gz"
    sha256 "4f191b55780ab5c5456e86dd79bebf48bcb3da6991bbdaf258bf946ee6a4cdb3"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
