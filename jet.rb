class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.1.0"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.1.0/jet-0.1.0-linux-amd64.zip"
    sha256 "d32577bfc37875f340a423fcd3118606957911fb52b5bfefb49e198a47c39240"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.1.0/jet-0.1.0-macos-amd64.zip"
    sha256 "7619ff51d74f2887c51e9dcd21644bdee85aabbf16e99c9aa46710b91f03e668"
  end

  def install
    bin.install "jet"
  end

end
