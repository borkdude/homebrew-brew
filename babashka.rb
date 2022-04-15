class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.8.1"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.8.1/babashka-0.8.1-linux-amd64.tar.gz"
    sha256 "a820331c94ebcb9cbde055c75bb30b5d49d533523374638d7fc7a874aec37a0f"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.8.1/babashka-0.8.1-macos-amd64.tar.gz"
    sha256 "698ab35cb988c9e7def841eb4e7ba38f774b4f859be42ee5b8e2db1725af2584"
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
