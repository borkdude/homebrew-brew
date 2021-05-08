class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.4.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.4.0/babashka-0.4.0-linux-amd64.tar.gz"
    sha256 "a34f491c99d98f7dd2f4cba088e856bc7d9100ad2fa3f3fd2812d471b5fa5685"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.4.0/babashka-0.4.0-macos-amd64.tar.gz"
    sha256 "36303b55f980226587110919327a295b3c8bf13962e8b941a9d31b26bbc93d58"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
