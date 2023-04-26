class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.179"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.179/babashka-1.3.179-linux-amd64-static.tar.gz"
    sha256 "d7d39e1a1ecd7e764c8fd542329c00bfd2924344cae3dc66ef2ea7276a644900"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.179/babashka-1.3.179-macos-aarch64.tar.gz"
      sha256 "91b11c3cbc693132705cbb7c1b9347bc740b0f9ee2aabde986249b91b92c06d6"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.179/babashka-1.3.179-macos-amd64.tar.gz"
      sha256 "3bfc4a7790baa7ad54857dead699fc40085ce7d12a30b1a13d78593a741f14d5"
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
