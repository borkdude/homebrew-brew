class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.3/babashka-0.7.3-linux-amd64.tar.gz"
    sha256 "8379047c7fb4a6b526a28d1d135bbc58ba27e1add5e468ef3935f973bd1cd0e0"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.3/babashka-0.7.3-macos-amd64.tar.gz"
    sha256 "cc06e863560062a0d853eb77f5013bba9846dc7b3e7065a4ffa53d204456682f"
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
