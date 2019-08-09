class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.2/babashka-0.0.2-linux-amd64.zip"
    sha256 "d42eaa288d2e365616f7fb7e0ee12e04908d9ec10a616b8aac622d8b8ff439d0"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.2/babashka-0.0.2-macos-amd64.zip"
    sha256 "fa22aecdbf24b6b8008aa487224ed436a57ac0d1a440eaaae1d94ab08abac20b"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
