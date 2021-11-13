class Carve < Formula

  desc "Carve out the essentials of your Clojure app."
  homepage "https://github.com/borkdude/carve"
  version "0.0.2"

  if OS.linux?
    url "https://github.com/borkdude/carve/releases/download/v0.0.2/carve-0.0.2-linux-amd64.zip"
    sha256 "9d63dfcb28a1678176d0d945ff6f3006edb959b5d1aa6238b22aa8f42058e5b1"
  else
    url "https://github.com/borkdude/carve/releases/download/v0.0.2/carve-0.0.2-macos-amd64.zip"
    sha256 "ca69144d7a1190dd816c29d9011e6d4dcd2c19f7fa8605c12dbfe6cdaaf3df40"
  end

  def install
    bin.install "carve"
  end

end
