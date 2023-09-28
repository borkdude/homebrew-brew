class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.185"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.185/babashka-1.3.185-linux-amd64-static.tar.gz"
    sha256 "fcb19364c7c377d8d8ba5564146489b35499e869670202284dbb405953691203"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.185/babashka-1.3.185-macos-aarch64.tar.gz"
      sha256 "675f971ec1ec253e3db80241230cec9c9d0e2bd79b73702e030fb5487f082918"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.185/babashka-1.3.185-macos-amd64.tar.gz"
      sha256 "c79fc7891ed2ae84d3c3099ad298b42603778c3ce935f67373144b822615dc01"
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
