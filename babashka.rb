class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.19"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.19/babashka-0.0.19-linux-amd64.zip"
    sha256 "ebe306d31e14d1fda1e42dd1750c8d5247604527c18b9ea547fa2a65cf2a9edb"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.19/babashka-0.0.19-macos-amd64.zip"
    sha256 "8e0c635482ad71a4a207fb82c90e8a7b992f8c1a248544729441abf8784dfd0f"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
