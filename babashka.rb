class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.49"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.49/babashka-0.0.49-linux-amd64.zip"
    sha256 "a1713f0c49e031c6edb4294fc9d8f1d61799cd3b5feb05ad340dd15acf9531a2"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.49/babashka-0.0.49-macos-amd64.zip"
    sha256 "e860e0da2574b8a2ab280e2aa02303322ee2728e453eba7384af669711024dcd"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
