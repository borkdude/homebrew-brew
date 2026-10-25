class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.228"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.228/babashka-1.13.228-linux-aarch64-static.tar.gz"
      sha256 "223e6a1d98b162afb90a9199a26f7e922f190be3aacb5ad3fe9a6f866f10f7f1"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.228/babashka-1.13.228-linux-amd64.tar.gz"
      sha256 "0d24663ca8a70a9afc1a21faef74f876dd556ef7a1c63e5268347475bba5c822"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.228/babashka-1.13.228-macos-aarch64.tar.gz"
      sha256 "f845b69755ce7b2d7bfe581703668d7244e6fcbc4f2e221223f1e5226c1a9f5b"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.228/babashka-1.13.228-macos-amd64.tar.gz"
      sha256 "bd5a83640f2f98e926f86a02e446cf69c4837c1651f010e1f0e1c8c632f8f8ff"
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
