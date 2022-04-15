class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.8.0"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.8.0/babashka-0.8.0-linux-amd64.tar.gz"
    sha256 "601ca3141b576631a0898292fcf232f590ac65ded1b3e5b447b7470d50efc9bc"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.8.0/babashka-0.8.0-macos-amd64.tar.gz"
    sha256 "6dd0a68974acb0dfdab4164c7361a07a19193a2acbe1f8ebd5c27c6b8110e679"
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
