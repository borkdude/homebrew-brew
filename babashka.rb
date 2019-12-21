class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.46"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.46/babashka-0.0.46-linux-amd64.zip"
    sha256 "ddafb85f4de3c752b8e74dff3793f34157b5e019ea4938fd9cd67c0c5427a26d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.46/babashka-0.0.46-macos-amd64.zip"
    sha256 "831c7efcbf20d007500579f76e3033d9fbc42ac86a77ee89bf209e15c83f3ba1"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
