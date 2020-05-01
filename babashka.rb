class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.90"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.90/babashka-0.0.90-linux-amd64.zip"
    sha256 "e25ad2b4ce61c7df1d65ef885012ad621e8d80aa6f2660815fd53c0f28f8ff84"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.90/babashka-0.0.90-macos-amd64.zip"
    sha256 "ce0e727ec4d03590a861d2f87d045185262bddd14eb2b04d75fbe8086192f27d"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
