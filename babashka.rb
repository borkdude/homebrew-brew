class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.50"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.50/babashka-0.0.50-linux-amd64.zip"
    sha256 "f97c1329bd67d83baafe814dee0dbe03fd26827d0e1e68d32030b4095fc79b4a"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.50/babashka-0.0.50-macos-amd64.zip"
    sha256 "967badf6f756b8aa45a06d8673ec27e8342b3b14e2aa9a9ca1e0727df3af290b"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
