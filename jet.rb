class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.2.18"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.2.18/jet-0.2.18-linux-amd64.zip"
    sha256 "327e06d517ec501842b20a85c7a1d771265f1c2034d17f2ccd6a11cb1a026761"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/jet/releases/download/v0.2.18/jet-0.2.18-macos-aarch64.tar.gz"
      sha256 "be39e84a66feb365fcdc37a94012110eef495d1c131e1b5e718b56c4cacdb554"
    else url "https://github.com/borkdude/jet/releases/download/v0.2.18/jet-0.2.18-macos-amd64.zip"
      sha256 "eb784eb961e3a440fda996f1ba58401acb2568f91d3b9e4936959608c2787233"
    end
  end

  def install
    bin.install "jet"
  end

end
