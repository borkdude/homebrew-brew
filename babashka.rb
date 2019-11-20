class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.33"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.33/babashka-0.0.33-linux-amd64.zip"
    sha256 "c49a2545ee7f08ff82e2e7ec1e02024229ebf37eaebd376fe03cb834ed0cee1c"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.33/babashka-0.0.33-macos-amd64.zip"
    sha256 "8b8a115c89cfd767fe57bf75f5271ea25cc585ab323eb12d6f3603e626e6269f"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
