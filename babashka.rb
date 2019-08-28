class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.12"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.12/babashka-0.0.12-linux-amd64.zip"
    sha256 "c24df88253bafcb390c8f0f7792f182cd5643d918f4ca214ec17752c632c124e"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.12/babashka-0.0.12-macos-amd64.zip"
    sha256 "3b67a5f584c23758dbb67e423915b6faa8a48ac577446639ad8b7e8113f18fda"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
