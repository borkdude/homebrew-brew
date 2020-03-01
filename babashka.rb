class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.74"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.74/babashka-0.0.74-linux-amd64.zip"
    sha256 "458efa0dc2f8a101e3f58f272646ce2171e7dfe8a3610ae832f412fb98245e74"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.74/babashka-0.0.74-macos-amd64.zip"
    sha256 "bacc9a71c9945f64047bcfca03ea20dd1bffe7f8ddc8f12e7b89f13df2ac7eb3"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
