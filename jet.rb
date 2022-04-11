class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.1.1"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.1.1/jet-0.1.1-linux-amd64.zip"
    sha256 "1b4d11cc80d7a1225508b065b1a2650c238e121b3fd7fc34755c26d619d0a059"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.1.1/jet-0.1.1-macos-amd64.zip"
    sha256 "33b7ef14dc49a5350fbc66d640d041375db321c718ed83f843194e0896f40a9c"
  end

  def install
    bin.install "jet"
  end

end
