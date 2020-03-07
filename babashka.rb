class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.75"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.75/babashka-0.0.75-linux-amd64.zip"
    sha256 "e3f4ed04b032ee2bec668480eebd81f03d90aeed8abde99ae8ad81d375327895"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.75/babashka-0.0.75-macos-amd64.zip"
    sha256 "f08cd8e42f502df0e5954ef19269e7302818150059237b7b430b2ed2fd1619cc"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
