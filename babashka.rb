class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.209"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.209/babashka-1.12.209-linux-aarch64-static.tar.gz"
      sha256 "177c18b6ca00c1708070007a53777ef4c9ffe0bbaa2c66c1426312db645eeba9"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.209/babashka-1.12.209-linux-amd64-static.tar.gz"
      sha256 "6f34a2c65266b10413ea4a49c1243a0126d4dcd7f64d14bc3ce781f134fe4c9a"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.209/babashka-1.12.209-macos-aarch64.tar.gz"
      sha256 "92ec4624af3ce1fe09c177835836f23e60d018678c30ffcb83c1985c3a9c6d4f"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.209/babashka-1.12.209-macos-amd64.tar.gz"
      sha256 "b02f906697b1ede016e96a3b340ea40e52380eef52307abc8a114210bfe89c44"
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
