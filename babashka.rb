class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.73"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.73/babashka-0.0.73-linux-amd64.zip"
    sha256 "99e7d92378602ddb4654b67296f5df7157ec85d22ae9780e4b5bd893827e7ee9"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.73/babashka-0.0.73-macos-amd64.zip"
    sha256 "f87a02dd25207a894d7f0dd06f293b5d516735a2d4f029ed62be5ddd90428aeb"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
