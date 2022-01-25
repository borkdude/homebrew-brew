class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.4/babashka-0.7.4-linux-amd64.tar.gz"
    sha256 "a06f913c96a10bdc07e903c4960ba5a77ac2b68dcff249c0d249918d8713172b"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.4/babashka-0.7.4-macos-amd64.tar.gz"
    sha256 "18198b4b5d9f775d273f2301b633faefedd8059ff209ef4b4286a4b9427a570a"
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
