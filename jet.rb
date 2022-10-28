class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.3.21"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.3.21/jet-0.3.21-linux-amd64.tar.gz"
    sha256 "c814c4275640fac5f70428f11ab57699faf88e6bcac7943cf1561a1fac0b8295"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/jet/releases/download/v0.3.21/jet-0.3.21-macos-aarch64.tar.gz"
      sha256 "de36d2908023eeea2a9821aeb760986b7b600687f3bd42b84a99f3a007d897fe"
    else url "https://github.com/borkdude/jet/releases/download/v0.3.21/jet-0.3.21-macos-amd64.tar.gz"
      sha256 "6455e2bca4a0b7b1f1bdabbf6efe6ec9be2f81d62037183d6f81f4b45b85b659"
    end
  end

  def install
    bin.install "jet"
  end

end
