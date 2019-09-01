class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.15"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.15/babashka-0.0.15-linux-amd64.zip"
    sha256 "6a2b218853f37616523119b8226d4607f7cee3dbb4bbcdb07bd1a74745b26dd9"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.15/babashka-0.0.15-macos-amd64.zip"
    sha256 "880bca598de07376a8e139b33d00970f300359112e5b9d8949c247f58c330776"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
