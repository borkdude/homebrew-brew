class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.207"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.207/babashka-1.12.207-linux-aarch64-static.tar.gz"
      sha256 "db0ce3a3e120589bce4233387d01d87a9cfd1e099e753f02c14e066635a27f0f"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.207/babashka-1.12.207-linux-amd64-static.tar.gz"
      sha256 "78bd6f9ba967afd4cfc6eb34fca0d9d6fc521c5b5243f4b1ed13ae2e45e6fe4d"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.207/babashka-1.12.207-macos-aarch64.tar.gz"
      sha256 "72c306f64446255034a7d7473caf3e19e644b1666bc50a5a1e3701c928e6d6fe"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.207/babashka-1.12.207-macos-amd64.tar.gz"
      sha256 "3ec61805d070320cecfc7450c45d49f5525f7dcbfabbc26bb4e3862df08eeb9a"
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
