class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.12"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.12/jet-0.0.12-linux-amd64.zip"
    sha256 "6e6512b41a109136bba78ed66d8edd657715e0a7bae08660ddfa9e16da65782f"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.12/jet-0.0.12-macos-amd64.zip"
    sha256 "dc567d2b142b93c754c0b58450afa9e76320d696ce9926175eff4a2297777199"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
