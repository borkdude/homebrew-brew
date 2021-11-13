class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.5/babashka-0.6.5-linux-amd64.tar.gz"
    sha256 "55adddd5ddffc0e4c469ae716f5e11ff567dccf7c2bec3f9af6a63f0154beca2"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.5/babashka-0.6.5-macos-amd64.tar.gz"
    sha256 "6108655a72a24dfb5b658fcec81d2285752944ea796cd310d997527e9b7796f6"
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
