class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.18"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.18/babashka-0.0.18-linux-amd64.zip"
    sha256 "251f62afba2d0ba292482d620b21e04e2702f58235102c407d195a8e4cc8a451"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.18/babashka-0.0.18-macos-amd64.zip"
    sha256 "1a3ced76c8aa7727a44a7a23b058d867a1e804a47644a68c8b8c0dbe7f777574"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
