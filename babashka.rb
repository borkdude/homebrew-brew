class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.7/babashka-0.7.7-linux-amd64.tar.gz"
    sha256 "218c0c73cfea6a9a66ca1b3a98fa8005fc4c1661d6224c476305f5766f7ba4da"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.7/babashka-0.7.7-macos-amd64.tar.gz"
    sha256 "d7d5384403ff7622565d91c0a2913e8be3de1f4e94449c2db89f184830a16c75"
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
