class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.27"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.27/babashka-0.0.27-linux-amd64.zip"
    sha256 "b0b1f0c3d7e0603a7f8f31ea5037e0ec6d04b7c7918164f526d8d2e27007f46f"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.27/babashka-0.0.27-macos-amd64.zip"
    sha256 "484b082e2d9154aa88bac5c59870f021d290f16aa1451887284c5ac773c629a2"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
