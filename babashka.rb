class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.22"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.22/babashka-0.0.22-linux-amd64.zip"
    sha256 "46407322d8e4e9d05782ebd4f0eddf7c851652a180c006d970d2bb5a080f7e26"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.22/babashka-0.0.22-macos-amd64.zip"
    sha256 "fea4b4ab8eede82cc16e44f3ac67745abe993a5fa890de848fc6ce87907b2d4d"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
