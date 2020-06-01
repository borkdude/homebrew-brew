class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.1.0/babashka-0.1.0-linux-amd64.zip"
    sha256 "d9470f10ec0dc3d6374fa6cd1ded6caad68bc47bd72292bbeb955e8f1fe520f2"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.1.0/babashka-0.1.0-macos-amd64.zip"
    sha256 "f9e0f8cbe12dea941ed3eee371d69f831261c16f66e522c379a066d2d26bd37e"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
