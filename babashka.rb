class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.222"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.222/babashka-1.13.222-linux-aarch64-static.tar.gz"
      sha256 "25b4fbcca00350788ba41be93e8270cb7c76f33b206e9e18b588aa8c31a27798"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.222/babashka-1.13.222-linux-amd64.tar.gz"
      sha256 "3a596b475692e66498e6f1e9e4fd4f880c12922e49f576e7050d91d78ce70177"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.222/babashka-1.13.222-macos-aarch64.tar.gz"
      sha256 "ca7c0fbd8b4190b52adb66af627f204f9972729edbcd0ded87826c0244406418"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.222/babashka-1.13.222-macos-amd64.tar.gz"
      sha256 "aeeaf4fd401c61084cce9559981b6b8f746a9e0c458b886d6707a59e3dfb3c73"
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
