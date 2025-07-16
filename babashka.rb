class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.206"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.206/babashka-1.12.206-linux-amd64-static.tar.gz"
    sha256 "80a96e3bfb61d3b8b616016d008420c1557cd8197040b2c1c60b5f6624c9b9c6"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.206/babashka-1.12.206-macos-aarch64.tar.gz"
      sha256 "31d5b9b3c9295b3058a8deb9265e55c4a002ad809c085be2e6ef45df29c1a3d5"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.206/babashka-1.12.206-macos-amd64.tar.gz"
      sha256 "4529ef69c92a8519c274288a7d0650027a31a6d45a8bbc79ee36ebe61f350d3e"
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
