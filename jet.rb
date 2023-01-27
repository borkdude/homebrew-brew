class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.4.23"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.4.23/jet-0.4.23-linux-amd64.tar.gz"
    sha256 "4399f48aaac89a04c36e0261009d163621399a708b0a70d7f94183b3fdb872a2"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/jet/releases/download/v0.4.23/jet-0.4.23-macos-aarch64.tar.gz"
      sha256 "974a7a649a924b6fc21c0e32686826a46ac1be8392b782bda3a43fa1953834fe"
    else url "https://github.com/borkdude/jet/releases/download/v0.4.23/jet-0.4.23-macos-amd64.tar.gz"
      sha256 "47bff82725ca6b6e82a88e93af5c75d5b9a213392f10b25334ee3a87972072ca"
    end
  end

  def install
    bin.install "jet"
  end

end
