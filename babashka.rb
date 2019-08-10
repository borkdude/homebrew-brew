class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.4"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.4/babashka-0.0.4-linux-amd64.zip"
    sha256 "753bbc6573d97cc5735a0c9aaf9d3578ad3019233a4cb71656f9e22c3781bbb7"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.4/babashka-0.0.4-macos-amd64.zip"
    sha256 "ebebe3af155a5aac65ffd68641ab9f80bdcd27acdae7c9f8444d4f94f7f525e1"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
