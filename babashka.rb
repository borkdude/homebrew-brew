class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.9-2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.9-2/babashka-0.0.9-2-linux-amd64.zip"
    sha256 "35e4857e0e5e8ed1f78e20c5e35e53fdfc820eccbbd1dd6a66245eccce7de044"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.9-2/babashka-0.0.9-2-macos-amd64.zip"
    sha256 "c0b2384f461a09e2b529ad704f757d70e2664cd3c6b2a96fb9b59b9f4babe7e6"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
