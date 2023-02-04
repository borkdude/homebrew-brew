class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.1.173"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.1.173/babashka-1.1.173-linux-amd64-static.tar.gz"
    sha256 "25975d5424e7dea9fbaef5a6551ce7d3834631b5e28bdc4caf037bf45af57dfd"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.1.173/babashka-1.1.173-macos-aarch64.tar.gz"
      sha256 "792ade86e61703170f3de3082183173db66a9a98b11d01c95ace0235f0a5e345"
    else url "https://github.com/babashka/babashka/releases/download/v1.1.173/babashka-1.1.173-macos-amd64.tar.gz"
      sha256 "6c95579c2689bccc6fc89e9a047f207f076b1c289eba7654bc504701c1cb5b7b"
    end
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
