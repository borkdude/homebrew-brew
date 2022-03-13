class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.8/babashka-0.7.8-linux-amd64.tar.gz"
    sha256 "4cdcf70317157a99059d328c6ab04a051e0cc132d37ed6ec5de81e34b044ac6b"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.8/babashka-0.7.8-macos-amd64.tar.gz"
    sha256 "a240cc014f28d7bc5e37f750c3d0bebf423f198b140c62694676bad844f1c59f"
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
