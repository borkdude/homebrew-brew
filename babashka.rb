class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.69"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.69/babashka-0.0.69-linux-amd64.zip"
    sha256 "45c4a8dccda8952b82a34826ea819aec941beff90d0df0da5ee6b935457bf079"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.69/babashka-0.0.69-macos-amd64.zip"
    sha256 "a01779aea425589742c198ea302ca5e94b62f8df14d452e050d517bbbcef00cf"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
