class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.51"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.51/babashka-0.0.51-linux-amd64.zip"
    sha256 "ee240bf121df54b3ce5d82d509049af775c74d7615356ae4060e1488d9e47015"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.51/babashka-0.0.51-macos-amd64.zip"
    sha256 "f856214085ac2a9528e8b54fd2cc2b256aedf1e9f3d1047f55ae6d0b422945ae"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
