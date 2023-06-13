class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.181"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.181/babashka-1.3.181-linux-amd64-static.tar.gz"
    sha256 "fb7fb2b6f525833f1cf5aae285ba95e97428fa079ddd7d65e1fdd1376e2373aa"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.181/babashka-1.3.181-macos-aarch64.tar.gz"
      sha256 "2e59aef0669b775521e84bb139f573b95cfb6a5e76ca023f20300de6843457f0"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.181/babashka-1.3.181-macos-amd64.tar.gz"
      sha256 "2241fde66424a164acd57857e26c4ccd38ca524fabd343e01aca04b69dcc85e4"
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
