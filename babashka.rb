class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.8"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.8/babashka-0.2.8-linux-amd64.zip"
    sha256 "a960c92c0debe4416b120bbd2ee1debf543343a1585a1a9d36d3916b8eb0db77"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.8/babashka-0.2.8-macos-amd64.zip"
    sha256 "d511a781b1e6d7af5b2529b669a8693c4963597b0bcc6fcfbe34e31c32fc146f"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
