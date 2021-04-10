class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.3"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.3/babashka-0.3.3-linux-amd64.tar.gz"
    sha256 "78d03287d7a34156c76795af7e5aaf4ae1e6b980bc9dc152a7e26634005e9635"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.3/babashka-0.3.3-macos-amd64.tar.gz"
    sha256 "3c8e09ae827dec8df6407eae0a212d1b8fe3f6f03895a92d43ff5782f2a69088"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
