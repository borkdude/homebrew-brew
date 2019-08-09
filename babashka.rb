class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.1/babashka-0.0.1-linux-amd64.zip"
    sha256 "c43ac5719c297dcf925db965dbf7e7c454bd6564d29bd42ba7cd891ba7d3eefd"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.1/babashka-0.0.1-macos-amd64.zip"
    sha256 "b634cbbc57e4a50a8ffaacd15a09672e760b12080c73ddadc291c82e428de5c9"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
