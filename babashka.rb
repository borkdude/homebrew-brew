class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.11"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.11/babashka-0.0.11-linux-amd64.zip"
    sha256 "82999da1c64aa00adcbdb53ffff4df11fd8d4e527dc81a2e09fd9668de48aa13"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.11/babashka-0.0.11-macos-amd64.zip"
    sha256 "135a9e7b0924fe3c7ff96b817b8938355426eb68466058631552dc3f33a67022"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
