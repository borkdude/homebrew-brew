class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.24"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.24/babashka-0.0.24-linux-amd64.zip"
    sha256 "8902ac0898faf0e555f616f91f7c9c6391328aa4aedc95196f618ed1afc39389"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.24/babashka-0.0.24-macos-amd64.zip"
    sha256 "54e5e5736396625ec3aade6b22c221d93826bbda62a6229dbaa902d11e2da153"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
