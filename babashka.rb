class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.42"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.42/babashka-0.0.42-linux-amd64.zip"
    sha256 "2d88787fdc58e73efae4e31325006844d9c18ad71fd0dea31be122a041d59cc3"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.42/babashka-0.0.42-macos-amd64.zip"
    sha256 "04029597a51e9ee51745f80aabf561cf5b1c3c0d1b2533cfb15f0fc4b860c858"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
