class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.79"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.79/babashka-0.0.79-linux-amd64.zip"
    sha256 "11ecfef0d87a0cac0633b63502c35d13d9e4fe8cb9ef51dd29bafe7a5a4398f4"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.79/babashka-0.0.79-macos-amd64.zip"
    sha256 "c1c16c03c2eaa95c2f0b7cf936c789bc0d5851cd6f9784e4e40ce147c01afdc9"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
