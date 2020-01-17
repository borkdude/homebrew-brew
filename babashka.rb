class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.64"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.64/babashka-0.0.64-linux-amd64.zip"
    sha256 "08a41d0152824b0055cff3d683bbb73bcc02a48a992a59a78554209c26ce18b4"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.64/babashka-0.0.64-macos-amd64.zip"
    sha256 "0af93e14399f03612698017b5e19662fa89df94c6c6b2e78c40738db34b90555"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
