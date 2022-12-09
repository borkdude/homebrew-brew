class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.168"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.168/babashka-1.0.168-linux-amd64-static.tar.gz"
    sha256 "c72d1682d2a77421939f63987ceeca09bbd8086f96de5e1ed1a46a9a70eada88"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.168/babashka-1.0.168-macos-aarch64.tar.gz"
      sha256 "11c4b4bd0b534db1ecd732b03bc376f8b21bbda0d88cacb4bbe15b8469029123"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.168/babashka-1.0.168-macos-amd64.tar.gz"
      sha256 "379a4f50ba302d3c5a5e2687f9e1dfe02acbd9a87e0b4619f4f0791326f340d0"
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
