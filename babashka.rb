class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.180"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.180/babashka-1.3.180-linux-amd64-static.tar.gz"
    sha256 "828eb9a3efd315fc2a392d1ea582b316d673fba3bbdb92d0421a35c7159c4b31"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.180/babashka-1.3.180-macos-aarch64.tar.gz"
      sha256 "e9b4d71ce481077a840ac938c354fd09d99787564decb4e5b1cc0ed431f2d3f3"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.180/babashka-1.3.180-macos-amd64.tar.gz"
      sha256 "e88ba4f88b64db6bf5ce2d71ce649ed09d277155bcf340db4d6fc28f79b88bbf"
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
