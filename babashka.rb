class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.89"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.89/babashka-0.0.89-linux-amd64.zip"
    sha256 "3b9be815e85dd3f19b3404216d56daa8ca4ec991cc705d2a2bb64912c91caddd"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.89/babashka-0.0.89-macos-amd64.zip"
    sha256 "e824dc1fdc8744e560f063ef675de20fc48f45bdeba57b493c58c24903d88366"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
