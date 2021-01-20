class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.2.7"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.2.7/babashka-0.2.7-linux-amd64.zip"
    sha256 "6bbe85a8dbcbdfeb1af924ee576b8c2acc64876a27e469b89bcb0b116830614a"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.2.7/babashka-0.2.7-macos-amd64.zip"
    sha256 "4c4b789d8728e4363117f3eb6d1d10bc80642ab6473706fd940aefae812cf534"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
