class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.193"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.193/babashka-1.12.193-linux-amd64-static.tar.gz"
    sha256 "0720cd3f86ce99fbd0e7b4aea1c65d254383c4b56c95c2798a341b9e4413a395"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.193/babashka-1.12.193-macos-aarch64.tar.gz"
      sha256 "c7061f474dbca4cc0608e4558252b7fa2f26319569540dfb45a1258214c7a635"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.193/babashka-1.12.193-macos-amd64.tar.gz"
      sha256 "7b060079361ce8283b9da01c8f6be657e8a736a5c06ba72415eb1a7ef4557941"
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
