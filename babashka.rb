class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.92"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.92/babashka-0.0.92-linux-amd64.zip"
    sha256 "2c46f853190beb69cc5bdbd8193c7691dd87866f78912715e1ce90a6b30af917"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.92/babashka-0.0.92-macos-amd64.zip"
    sha256 "81d4596484c375a0d4d429807e3d14765215f51b86cf94a5f21a1abe12cf3d28"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
