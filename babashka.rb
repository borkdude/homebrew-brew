class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.7"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.7/babashka-0.0.7-linux-amd64.zip"
    sha256 "cae14221af45129b4b13aa6a877bf7271aa38fdc85a6091a4e67ece9ad5fbd76"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.7/babashka-0.0.7-macos-amd64.zip"
    sha256 "78125fe035c17555b3b6abea6aaf0b5deaf1449639b554f9718365923e703fa0"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
