class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.12"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.12/babashka-0.2.12-linux-amd64.zip"
    sha256 "f12c2ab661db7f3ff83e5d6dcf9ed0bc181ad00ee7128d9b3ea8398868d7ebc6"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.12/babashka-0.2.12-macos-amd64.zip"
    sha256 "19daaf004355c2cdaf7c0cce7c745682673cd2eb16a301c6dc11364e4cd553cc"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
