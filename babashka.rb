class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.10"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.10/babashka-0.2.10-linux-amd64.zip"
    sha256 "ea66cbf78fe2d5d6135c19792ec6da0fc6041b839434d76662ace103eb974468"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.10/babashka-0.2.10-macos-amd64.zip"
    sha256 "e8cbf992827959c615ee0637db796823e0c964606b1dd3e33b8fe9feff648a27"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
