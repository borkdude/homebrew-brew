class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.217"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.217/babashka-1.12.217-linux-aarch64-static.tar.gz"
      sha256 "f0c01a29232a79ddc550b6cbd1387e255b3e20fa888c7f40499708e3c3c3200d"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.217/babashka-1.12.217-linux-amd64-static.tar.gz"
      sha256 "137bffe4555020af81abe56dffeadd6c3cd3fa3e998706ae1f5d2edb2f2ec486"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.217/babashka-1.12.217-macos-aarch64.tar.gz"
      sha256 "c87637b58fe214a904374593941227a938c91a98962fe12bcd9ec8b666f7b8ca"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.217/babashka-1.12.217-macos-amd64.tar.gz"
      sha256 "a5a1c685fbc6bccbb9bbfe1e3ab698c47d0d92f2ec3a02a9bbbb49e527cbfb1d"
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
