class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.9.161"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.9.161/babashka-0.9.161-linux-amd64.tar.gz"
    sha256 "db473672694ff7cbb30fe203fc6272ff196cc88fb53d817a5e3b50100e61a3c3"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.9.161/babashka-0.9.161-macos-aarch64.tar.gz"
      sha256 "fc8ac2489560e65939f6147b2f561ae783545842eb0c786441019b126e282266"
    else url "https://github.com/borkdude/babashka/releases/download/v0.9.161/babashka-0.9.161-macos-amd64.tar.gz"
      sha256 "26a473a4a5a6c9d50c6e5763d86e6f01cb49323b41ee68193dca3a48682bc2ac"
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
