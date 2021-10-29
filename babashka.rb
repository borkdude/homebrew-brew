class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.3/babashka-0.6.3-linux-amd64.tar.gz"
    sha256 "e8c7b640fd93626790591ac4e7af8594b8655c148fa993e2f449d456e7de50c3"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.3/babashka-0.6.3-macos-amd64.tar.gz"
    sha256 "342c8ab6cef00c32f70a5dc4a9353e57582c2246074b48740d1b17e3a2453ee5"
  end

  def install
    bin.install "bb"

    # maybe in a future release:
    #   bin.install "bbk"
  end

  test do
    assert_equal "hello\n",
      pipe_output("#{bin}/bb -e '(println \"hello\")'")
  end
end
