class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.9"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.9/babashka-0.0.9-linux-amd64.zip"
    sha256 "9857baa2f39e64e8fb327f677c1493d4f44af88fe0631272ff81a1edfdb47dc6"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.9/babashka-0.0.9-macos-amd64.zip"
    sha256 "c92adfaecd70e9d829e73e2cf36093c8decf80a10f93726d1facbb9d65762088"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
