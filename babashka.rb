class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.86"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.86/babashka-0.0.86-linux-amd64.zip"
    sha256 "56482e9ae57a2c397ba43443e4aa6e9b87116265605e611e0cca478a30994038"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.86/babashka-0.0.86-macos-amd64.zip"
    sha256 "f1f024573d5f9f83e2407d36038926fa6583231434bf0dc56f7fcffe933ef4fe"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
