class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.9"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.9/babashka-0.2.9-linux-amd64.zip"
    sha256 "bb02df1ae1d56739019177aab804418967fb832fe8d78e0324f5a28cf96ab998"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.9/babashka-0.2.9-macos-amd64.zip"
    sha256 "72a3dbac8bc7945f6e2f8584e7e0a844142a2e467e0649a084738252a12ecc56"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
