class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.1.1"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.1.1/babashka-0.1.1-linux-amd64.zip"
    sha256 "27c095fc50206673595da66cbd633196be19d548c744c463fa91c050d61b20a3"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.1.1/babashka-0.1.1-macos-amd64.zip"
    sha256 "4e8d0d4fb411df0c733852a47c50677685c163c0d86094fbc068f5586d9bf578"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
