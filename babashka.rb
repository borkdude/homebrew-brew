class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.2/babashka-0.3.2-linux-amd64.tar.gz"
    sha256 "9ac5e2851f791181f2036ae0ad4159094b5072a5cd762f4d1fa0a8faac142e6b"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.2/babashka-0.3.2-macos-amd64.tar.gz"
    sha256 "8aef627aad767ff33205d6c8b3aad1f9abd8826122c1822c0e5b387cf755d786"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
