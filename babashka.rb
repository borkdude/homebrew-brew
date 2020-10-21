class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.3"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.3/babashka-0.2.3-linux-amd64.zip"
    sha256 "a3aa1ce35cedbbd33361b2523befbd221e26d1fc8fa7db95f15d12ddabe33d94"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.3/babashka-0.2.3-macos-amd64.zip"
    sha256 "70298e0f3bb1f67f5e918134465c135d13fca90e2276c0789f29bed8c740ea5e"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
