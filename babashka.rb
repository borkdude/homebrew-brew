class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.1"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.1/babashka-0.6.1-linux-amd64.tar.gz"
    sha256 "1119c244506541b3499564cc6bb8631e94d58f4ee6b16718ab616427cc5d6b85"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.1/babashka-0.6.1-macos-amd64.tar.gz"
    sha256 "bf43d2ec8f8a4d68dd9bf16982ce4df3dbda353f6452ae7b68b43d6ff063a84c"
  end

  bottle :unneeded

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
