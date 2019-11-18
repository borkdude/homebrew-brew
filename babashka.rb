class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.31"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.31/babashka-0.0.31-linux-amd64.zip"
    sha256 "8db484f1d8a7c5cceb7d79c324ef425e03484cf64795eda0416a560f5c0b87b1"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.31/babashka-0.0.31-macos-amd64.zip"
    sha256 "d5be5d10911c61233406c0cca60f934ef1d04134c736551341e4e6bf4b69d260"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
