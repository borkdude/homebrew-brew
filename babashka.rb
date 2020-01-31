class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.68"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.68/babashka-0.0.68-linux-amd64.zip"
    sha256 "a4385aa3030624d6a273bef866de4ab7069347a6f86f6bb49b52a8f8978891cd"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.68/babashka-0.0.68-macos-amd64.zip"
    sha256 "6d48e600646408863c28e4b69fe1ce5c1b8836a37321e8dc3b09135a13741286"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
