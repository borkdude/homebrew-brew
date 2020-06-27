class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.1.3"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.1.3/babashka-0.1.3-linux-amd64.zip"
    sha256 "98b59e3e0ebe1917232692d81d1bb9836089f86d67b46931984e07350cc08d5a"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.1.3/babashka-0.1.3-macos-amd64.zip"
    sha256 "e78602a9d1e37e6048f4c9e83b48248b03829a8bb8deb3036cc8743c6f2d37f5"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
