class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.9.160"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.9.160/babashka-0.9.160-linux-amd64.tar.gz"
    sha256 "f07bfa5b84388360f2453446fbf8aca412a4a6e76cbf2099571763e46673fa3e"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.9.160/babashka-0.9.160-macos-aarch64.tar.gz"
      sha256 "87d0592396f3b0734b013ab8658b7bc5b9a0fb0c4f68f807c59eae837b09be90"
    else url "https://github.com/borkdude/babashka/releases/download/v0.9.160/babashka-0.9.160-macos-amd64.tar.gz"
      sha256 "943eb84db546af3eb0174b0ae2310c90151be912de145deda22603f25533b027"
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
