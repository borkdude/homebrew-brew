class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.186"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.186/babashka-1.3.186-linux-amd64-static.tar.gz"
    sha256 "fa92d6ad5a39711a6863905bda01a37ff0ef75b646e4937128c9acc3485f1b9f"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.186/babashka-1.3.186-macos-aarch64.tar.gz"
      sha256 "6abad9842186077513de8564eed3041f4966aaf15a79712c8f9d5a1793add5f4"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.186/babashka-1.3.186-macos-amd64.tar.gz"
      sha256 "0f4c8ec28e92d3c99cd05515ebb4d14d54b40d9816b7d9d5dce8480f6811fae1"
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
