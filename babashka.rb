class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.191"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.191/babashka-1.3.191-linux-amd64-static.tar.gz"
    sha256 "7002e7d8cee8909de2a9cb678541a2b5bf076f0c3576950dd3bbb4d6288b0891"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.191/babashka-1.3.191-macos-aarch64.tar.gz"
      sha256 "f0ecf42ee5e5cd356ffd62b165164f952da9f42cae5e1924dcb297db68a0f55d"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.191/babashka-1.3.191-macos-amd64.tar.gz"
      sha256 "2e0028f48d4ec512950d7c4ac3524c79e1a62ba70c214f2ac48c74680158ad3c"
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
