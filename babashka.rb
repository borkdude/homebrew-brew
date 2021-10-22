class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.2/babashka-0.6.2-linux-amd64.tar.gz"
    sha256 "40e2d0c71d192cca46a987f01dc3e06780f9ee6b379837739bd7baaa239fdec6"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.2/babashka-0.6.2-macos-amd64.tar.gz"
    sha256 "e582cd728c7fd6b71d1d679bac6261b3870ea50c41fb6bb44c4760d8a76550a8"
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
