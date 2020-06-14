class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.1.2"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.1.2/babashka-0.1.2-linux-amd64.zip"
    sha256 "315879c8eb88b4c67a2119dccc0c790e44d40020a94a00498d08a3cfb8db0d0c"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.1.2/babashka-0.1.2-macos-amd64.zip"
    sha256 "e671d710b63826ffeab7efb0b4cfd9e7884f3012ce39e3a52405e21984bfd92a"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
