class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.8.0"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.8.0/babashka-0.8.0-linux-amd64.tar.gz"
    sha256 "823dcadd3691288b09bd1533bedc4189a09d8b1e408b9a8a878053afd6ed539f"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.8.0/babashka-0.8.0-macos-amd64.tar.gz"
    sha256 "284a3dc22b68459ed8b5633d893125d349c8e747c37c2cb7366bc742809c2c1f"
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
