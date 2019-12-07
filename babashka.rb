class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.38"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.38/babashka-0.0.38-linux-amd64.zip"
    sha256 "049e93f870386dc39f46f018dc0f37f56dd711ecc9fb8f923cfe2f257fccdf03"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.38/babashka-0.0.38-macos-amd64.zip"
    sha256 "81277cc733d7f3b5e679bae0e2143213b1832ef9fad48761bce4180b5d43954f"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
