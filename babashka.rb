class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.3"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.3/babashka-0.0.3-linux-amd64.zip"
    sha256 "ec49d0a0ee21449e4fa192e9d9fafb150a443dcdd8bfd42227af0a127218a96b"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.3/babashka-0.0.3-macos-amd64.zip"
    sha256 "61cd0990ddaf043a7acbc83833d35c3bedc7a311b99b2433790f52843e0730bd"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
