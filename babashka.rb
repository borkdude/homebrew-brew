class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.204"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.204/babashka-1.12.204-linux-amd64-static.tar.gz"
    sha256 "6287dc9f86e7ef97ea8f5c9fa0274470b0963b78d23fb395bcc9be001515368c"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.204/babashka-1.12.204-macos-aarch64.tar.gz"
      sha256 "b5302412b63f6c51f1a6661bd5acbd9fdf30a834ea8821c0f54f9c33d8c2ea7f"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.204/babashka-1.12.204-macos-amd64.tar.gz"
      sha256 "3c5d939c87cbd10c5c960d26e965515f0c02575f1f74fa8a7e509380e41cc71f"
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
