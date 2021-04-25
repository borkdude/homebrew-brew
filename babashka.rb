class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.6"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.6/babashka-0.3.6-linux-amd64.tar.gz"
    sha256 "2a57e26944f3066e25cdb90cad7e356e7b08f38c956e07212cbeb2f7a5c298d1"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.6/babashka-0.3.6-macos-amd64.tar.gz"
    sha256 "a4136771ba2cf40dff673160f574cf9d360f2af4e2e47185d14f6f58b44b3537"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
