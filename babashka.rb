class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.200"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.200/babashka-1.12.200-linux-amd64-static.tar.gz"
    sha256 "f68b335c8e35c84667a30b525acabf1133f0656f4fd36c35a9d01bf7e3de0908"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.200/babashka-1.12.200-macos-aarch64.tar.gz"
      sha256 "628fd0662a2c3616dd5e88c6c8abbd727fa3d02f043c57238a0cb40036f5e368"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.200/babashka-1.12.200-macos-amd64.tar.gz"
      sha256 "b4b1d5c96b17f18a2bdd2a74ca2aef380ea6c4d28d39a840e6e9a072bf51090c"
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
