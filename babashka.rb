class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.99"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.99/babashka-0.0.99-linux-amd64.zip"
    sha256 "a06ff85f9ae2db4de67494f4db50302ae43586b50a91d7a6ae14afb6c173418a"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.99/babashka-0.0.99-macos-amd64.zip"
    sha256 "ea5496e49b766878d5891c494f682253a3967e3fce118c808d68733f7bcf121e"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
