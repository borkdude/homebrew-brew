class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.63"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.63/babashka-0.0.63-linux-amd64.zip"
    sha256 "acea993af65fba7ecab50526e583e844856ebdd08b91f5e3387e693c765d3db9"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.63/babashka-0.0.63-macos-amd64.zip"
    sha256 "463b6c96ec7ec9b38e655f34b424a1a6750e1556480605272e26c2892dd4c69b"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
