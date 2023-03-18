class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.175"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.175/babashka-1.3.175-linux-amd64-static.tar.gz"
    sha256 "58ef9b84408c7620ea88ebb7797e7b7a89c3cc4833b69b0e5cec0050a6fdffe2"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.175/babashka-1.3.175-macos-aarch64.tar.gz"
      sha256 "d5cd22ee5407c80629989473e0433a2aaede916d1b58a421f96f757b763976ed"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.175/babashka-1.3.175-macos-amd64.tar.gz"
      sha256 "afffde62fd6837f5af1c2630ea2a0edd6ea337e2bdc18989dc6aa7edd423a972"
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
