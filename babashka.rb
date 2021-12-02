class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.8/babashka-0.6.8-linux-amd64.tar.gz"
    sha256 "c712ef572dfa5c11ab06af8b5ec02c4c48a6ac9efa0bddbc43b04f6a67238469"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.8/babashka-0.6.8-macos-amd64.tar.gz"
    sha256 "cd8d0abe37f8bca4d33545d76ebf3761e87ace3490b7819fbabf62807dfba569"
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
