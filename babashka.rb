class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.72"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.72/babashka-0.0.72-linux-amd64.zip"
    sha256 "661a6e943d7d5b87f56c3493d956b6e37d89e0cfb34747e66af43f31e747e118"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.72/babashka-0.0.72-macos-amd64.zip"
    sha256 "6d7fb5c55b127b81c6aec89d962687c6fdd6307c3ce108733ae9c4f7791128ca"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
