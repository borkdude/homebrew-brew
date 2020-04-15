class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.85"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.85/babashka-0.0.85-linux-amd64.zip"
    sha256 "dfa0d2aadeeefd38e601b571d763b0eb8020282d55e8461edf5af72f70f57e50"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.85/babashka-0.0.85-macos-amd64.zip"
    sha256 "13a9e1925a79344305e8dec84d7183ff56d848ceaaee99aba3db6fa4e679a4e6"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
