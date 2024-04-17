class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.190"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.190/babashka-1.3.190-linux-amd64-static.tar.gz"
    sha256 "b974fd4b0bf9c05a65dec59c165339a02d157e4571f80b570ab0734fc3fa5855"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.190/babashka-1.3.190-macos-aarch64.tar.gz"
      sha256 "1a01b043796d34200c1e854f52e81da94206952354ea1aa242a1bf625829669d"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.190/babashka-1.3.190-macos-amd64.tar.gz"
      sha256 "62890394a9bd31aeaa277fef1a12822a30ded9c21fe27c7c9e404671f57e5dc5"
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
