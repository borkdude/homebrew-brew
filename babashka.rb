class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.0/babashka-0.3.0-linux-amd64.tar.gz"
    sha256 "c751cd278d67ce0c7a3b13861787cb081ff6eefa1e529b61fbb2878413b9c103"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.0/babashka-0.3.0-macos-amd64.tar.gz"
    sha256 "cfe78b3c93eac0911b6ac5c25ce683ebe6bfd2772ddad7a28a16430363254817"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
