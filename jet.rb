class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.5.25"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.5.25/jet-0.5.25-linux-amd64.tar.gz"
    sha256 "924ad772188bd7412f4e5bdd99eb8a48db5055056c695d47fe43c7a9c2cbd03b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/jet/releases/download/v0.5.25/jet-0.5.25-macos-aarch64.tar.gz"
      sha256 "687872f05e25e35792d09e2d8375d4d545238fae75ef8549e64382a3b690f88f"
    else url "https://github.com/borkdude/jet/releases/download/v0.5.25/jet-0.5.25-macos-amd64.tar.gz"
      sha256 "59f82d42032a322286b3c9bad2b3a210d57539c2146e09a0288793bbc9673f94"
    end
  end

  def install
    bin.install "jet"
  end

end
