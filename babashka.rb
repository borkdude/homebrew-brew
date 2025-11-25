class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.211"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.211/babashka-1.12.211-linux-aarch64-static.tar.gz"
      sha256 "3ab9cc952f2b7439c3c373c0a7d677194e9ffa9a737f64b241296f3e53e53e4e"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.211/babashka-1.12.211-linux-amd64-static.tar.gz"
      sha256 "1a669b926c78767920acb84aec4e33f8f30ab1cf86c8c53bb084a8f38f6ad729"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.211/babashka-1.12.211-macos-aarch64.tar.gz"
      sha256 "3aa145ccd178d64e3e8a6663bbc8902e052b431dfb06859cab999c789d57034e"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.211/babashka-1.12.211-macos-amd64.tar.gz"
      sha256 "c7176b2392b09a40b9bb0f2ad2f815aebeff28a5dd1278fc681ee750037a7593"
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
