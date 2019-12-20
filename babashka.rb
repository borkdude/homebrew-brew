class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.45"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.45/babashka-0.0.45-linux-amd64.zip"
    sha256 "cc5ae9778e615536c80730abbe56ccb52f8d348d17cde44bef4aeb0bdc6fce04"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.45/babashka-0.0.45-macos-amd64.zip"
    sha256 "e35bc70bee621fa5870d50015f5f0d312ac9fdb62f1fdd962795a4b35f4c3142"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
