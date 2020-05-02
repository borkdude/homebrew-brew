class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.91"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.91/babashka-0.0.91-linux-amd64.zip"
    sha256 "0d792cbcd5d68c192abbba370ede926859e01a14b3e4c6e86923cdbee562b143"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.91/babashka-0.0.91-macos-amd64.zip"
    sha256 "68b98b06411dec17018ae512f6cad37b8a71c5ef0ab6f8c40f4592d5a788ec05"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
