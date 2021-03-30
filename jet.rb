class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.14"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.14/jet-0.0.14-linux-amd64.zip"
    sha256 "5b9e6dcafbf36895c310253720f0644ac4d5395375eb629e063dc7378dee4949"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.14/jet-0.0.14-macos-amd64.zip"
    sha256 "443206c0ac92af4c3720cd335886adbfac1f458f01f1000ab619041cf3cd61d1"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
