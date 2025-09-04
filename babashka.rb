class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.208"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.208/babashka-1.12.208-linux-aarch64-static.tar.gz"
      sha256 "ff623c0909b8ec7e7e3f6ed88846f1cfc9fe7404d6fdd88addaa4b611cfe9d99"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.208/babashka-1.12.208-linux-amd64-static.tar.gz"
      sha256 "424c0be8be3932ecf16151e115c126e386931cd2ac8706afd99599f03cdb7129"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.208/babashka-1.12.208-macos-aarch64.tar.gz"
      sha256 "118d3b857567fc515bf2c505689c234a881841f80a3d662bb79b60412ff378e4"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.208/babashka-1.12.208-macos-amd64.tar.gz"
      sha256 "6763a6f93049abcd1c19980fb93c13b594c6894a8865e6d26c12a358329630b3"
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
