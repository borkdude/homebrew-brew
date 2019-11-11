class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.26"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.26/babashka-0.0.26-linux-amd64.zip"
    sha256 "0dc38509f205a36a8ec6e8ee3f0cb36166c037564477787c25de9f8404df21bc"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.26/babashka-0.0.26-macos-amd64.zip"
    sha256 "dc3bca71cf68c0c3f653c4cb8e27c4bc39619bf338341f40b4507dfcbc0c2168"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
