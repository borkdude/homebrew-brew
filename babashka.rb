class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.71"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.71/babashka-0.0.71-linux-amd64.zip"
    sha256 "75d68f05471bd9a1da6fc66ad47fc6faf1feec40ac7dd6fd62a21a690be894b5"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.71/babashka-0.0.71-macos-amd64.zip"
    sha256 "1e92181e2072baa32e809be2b13b219bbf81429105a216167a8caba7e5774b42"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
