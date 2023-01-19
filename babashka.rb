class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.170"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.170/babashka-1.0.170-linux-amd64-static.tar.gz"
    sha256 "daf240bb35d5a7b52fe62fa1ba54589b57a527168e5dc3ca467fc521cdfe2ca5"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.170/babashka-1.0.170-macos-aarch64.tar.gz"
      sha256 "ec7ce4dd214c5a91415494befafc7cf33ce2d865c259d855dc284c181383d68c"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.170/babashka-1.0.170-macos-amd64.tar.gz"
      sha256 "273bda6bc625cfeaa838caade8d23913cfa1adf5e720239e02ebdddbf1e76a81"
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
