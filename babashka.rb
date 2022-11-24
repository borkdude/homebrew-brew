class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.166"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.166/babashka-1.0.166-linux-amd64.tar.gz"
    sha256 "99b033a6bb12fe66ce564c451c0be0781bbb51b4f38ea7a7dd340e80113042d4"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.166/babashka-1.0.166-macos-aarch64.tar.gz"
      sha256 "8804cad14e25c9e6c4e42934f6640340ec63e6471d5568d88034e7bd0707ec49"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.166/babashka-1.0.166-macos-amd64.tar.gz"
      sha256 "063dfb23bd1bfbf59ca696adf6954d031ef7585449ae1ff2ae436bd70e7ccf20"
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
