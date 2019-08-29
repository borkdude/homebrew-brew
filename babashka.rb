class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.13"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.13/babashka-0.0.13-linux-amd64.zip"
    sha256 "282cfd188f5da18a0e733aa835052da38399a567b615b5a1733d85466584a5f7"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.13/babashka-0.0.13-macos-amd64.zip"
    sha256 "d95da1eef11cf25332ac15038e9864984a907f47fb5215b7afedaa3daea1eadf"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
