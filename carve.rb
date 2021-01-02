class Carve < Formula

  desc "Carve out the essentials of your Clojure app."
  homepage "https://github.com/borkdude/carve"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/borkdude/carve/releases/download/v0.0.1/carve-0.0.1-linux-amd64.zip"
    sha256 "a0609bc276af6a54f315a1727b16fa2171e2175ab6a18ba1b9639936f83fe4e5"
  else
    url "https://github.com/borkdude/carve/releases/download/v0.0.1/carve-0.0.1-macos-amd64.zip"
    sha256 "2d86bebd8ad44a93f85f99fc66815d072cf968da44e6840f59d0219008328be1"
  end

  bottle :unneeded

  def install
    bin.install "carve"
  end

end
