class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.84"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.84/babashka-0.0.84-linux-amd64.zip"
    sha256 "1ec3527e241545375467a7aeb71bdb44f92c2210a6d1117cb8e121ba1f303d32"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.84/babashka-0.0.84-macos-amd64.zip"
    sha256 "daa2552ba44fe2a1eceedfa485d079172cecfe5535221faeb6a72a97fb1bfca4"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
