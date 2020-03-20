class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.77"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.77/babashka-0.0.77-linux-amd64.zip"
    sha256 "36d4eab3a7ccc72f566d5c23b8a9801c10672e8fbcc4500e57ca8f025fb320d6"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.77/babashka-0.0.77-macos-amd64.zip"
    sha256 "7fff94356823cb54c3a220fb100c6d5d9fc2e53ef0b33256cb276265f6d782b2"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
