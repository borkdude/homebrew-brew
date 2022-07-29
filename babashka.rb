class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.9.159"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.9.159/babashka-0.9.159-linux-amd64.tar.gz"
    sha256 "41b7b3f82101ba28bd2266855cc694232c58ae339f59d9d958161080c87a9b2b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.9.159/babashka-0.9.159-macos-aarch64.tar.gz"
      sha256 "f4f140b5382fc11bb46808f40343a408032b5c00f3f3c2216637c17d49ce07c4"
    else url "https://github.com/borkdude/babashka/releases/download/v0.9.159/babashka-0.9.159-macos-amd64.tar.gz"
      sha256 "784f2dec32537142e6dfa70e00faca200775c31e4ae3070243f2697e0b3d5377"
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
