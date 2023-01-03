class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.169"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.169/babashka-1.0.169-linux-amd64-static.tar.gz"
    sha256 "30131570c5cbe5d570a0ef3526e11170481d89daa4eca1a34b9cd549bd5af825"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.169/babashka-1.0.169-macos-aarch64.tar.gz"
      sha256 "4f0d1cfd582f0987da98b6ea068562715ac5c9641221ac49bf9d61ecd4a36ff4"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.169/babashka-1.0.169-macos-amd64.tar.gz"
      sha256 "6211942bf7804776258dac976994ac9570ce8651c6e0225c5397372f26f81bd9"
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
