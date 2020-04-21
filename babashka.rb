class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.88-2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.88-2/babashka-0.0.88-2-linux-amd64.zip"
    sha256 "72191290be7195755de9e2f4587b013ece0fef98a729bdf316497f54c1db3c88"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.88-2/babashka-0.0.88-2-macos-amd64.zip"
    sha256 "bd7b6fd11cbc1ec29398444b91413bab06d9b909ecf2eaecd2009354d4f22bf7"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
