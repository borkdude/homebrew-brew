class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.219"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.219/babashka-1.13.219-linux-aarch64-static.tar.gz"
      sha256 "e8d7a9c66c364b80627a43cb6ba5c14fb6ac7e4af114e8e5d80f97551ccdfe11"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.219/babashka-1.13.219-linux-amd64-static.tar.gz"
      sha256 "9ac1fe988d7001625b30ef3e3307e67f8545505a7cb49a4aa179f578115a3e09"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.219/babashka-1.13.219-macos-aarch64.tar.gz"
      sha256 "57a45df1cee534081375f35d39a3cb5f334956e6d429e364adbf46e296d52cfb"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.219/babashka-1.13.219-macos-amd64.tar.gz"
      sha256 "a26e2640d813d676682b5aa4244863fdb4da022802684d2da1183e612456b101"
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
