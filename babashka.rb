class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.98"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.98/babashka-0.0.98-linux-amd64.zip"
    sha256 "fcd6756f7a87f226d2e2a7683b54650577546e78b3535f4d358520042dbbcf93"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.98/babashka-0.0.98-macos-amd64.zip"
    sha256 "719bf45221504c83a5aeba8bd67d37aa9bc872b05a5aa41a6dc2c322ad589539"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
