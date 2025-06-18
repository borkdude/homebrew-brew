class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.203"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.203/babashka-1.12.203-linux-amd64-static.tar.gz"
    sha256 "b700f3ea35009f54f44f3b4f7b5e3126f290cc05cb6016a9ea729cef955d0ee3"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.203/babashka-1.12.203-macos-aarch64.tar.gz"
      sha256 "ad5e7f3ddb6a4de0bec833bd65751a245a114e58a0bffff24769af02c83f66a5"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.203/babashka-1.12.203-macos-amd64.tar.gz"
      sha256 "3d54c5dc39f28d53ce579becb525d14336c3a8b8e7af0b6ffb6f44c99f13495c"
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
