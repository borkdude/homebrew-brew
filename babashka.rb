class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.32"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.32/babashka-0.0.32-linux-amd64.zip"
    sha256 "c44f7f725a5356c1ac15e7ae8e91750f10e8967d750add7c98dbdcd56bb8c800"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.32/babashka-0.0.32-macos-amd64.zip"
    sha256 "3bf0e6dcff012f83ced4d8c39879a0b4314dc8589a5c0f595a5293fb02c83124"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
