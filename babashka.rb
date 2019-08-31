class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.14"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.14/babashka-0.0.14-linux-amd64.zip"
    sha256 "7494581e5ac06cad3da69e58790e6789913cfbf82a34fc19a1ae41bd3022cf26"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.14/babashka-0.0.14-macos-amd64.zip"
    sha256 "b7187ee7971519355c13dfb3627ad9b92e2a82d6b4e646cfe4d9a549686bea10"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
