class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.54"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.54/babashka-0.0.54-linux-amd64.zip"
    sha256 "31e62c41887a1ff7ff447e0c358a8ba5bf4700dc6bed48aa6d10944ecd306c26"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.54/babashka-0.0.54-macos-amd64.zip"
    sha256 "e8a9c45df21143b2c422ff309fe0250c8e179c4089210cd1773e86fe001a69cd"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
