class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.8"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.8/babashka-0.0.8-linux-amd64.zip"
    sha256 "8297f50ed88fa047b870a9acdb58ef40c4d92a5a45a05a6a9aedeaffd19175e0"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.8/babashka-0.0.8-macos-amd64.zip"
    sha256 "7dc12cda427823b82a02fcd6046fa5f08d6190c5a8632d53aadb671042b77685"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
