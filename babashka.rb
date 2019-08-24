class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.10"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.10/babashka-0.0.10-linux-amd64.zip"
    sha256 "6567c354cde5c7b53da36c92fc72d593b77294be7c471cf6121ecacd2714493a"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.10/babashka-0.0.10-macos-amd64.zip"
    sha256 "de4dbb5f0e34abda1c77624245bfc32ba74eb75749f0407b8183a93def53f7a7"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
