class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.1"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.1/babashka-0.2.1-linux-amd64.zip"
    sha256 "59ac471d14b4e33a5f871f53a4155cde945dcbc09c6c34f241c034838f5d76ad"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.1/babashka-0.2.1-macos-amd64.zip"
    sha256 "293c977e38acffee1f146b38bc2600103380a844b8113769d6b24d8107789c52"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
