class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.57"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.57/babashka-0.0.57-linux-amd64.zip"
    sha256 "361b5fcbb6a5870c6f18b4bf1eb5e0e0cbb1c3aec5536ffda6549b94b244f3ac"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.57/babashka-0.0.57-macos-amd64.zip"
    sha256 "ee2c701967a873468929e45f7ebbbe3e6401cb3331a9309d9572292d0d83a8e7"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
