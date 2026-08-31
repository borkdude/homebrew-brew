class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.220"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.220/babashka-1.13.220-linux-aarch64-static.tar.gz"
      sha256 "0efd6ef36b93ea2f0ae6ebf9d1bcd1a66167c2f41c17e990659aa067654437e8"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.220/babashka-1.13.220-linux-amd64.tar.gz"
      sha256 "5211ebf6267be2dbbf4857611cb01331b865bf6b0a8c9bc500c83a816df1a769"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.220/babashka-1.13.220-macos-aarch64.tar.gz"
      sha256 "f7d18c3ab11bb4ad0e32a45c1ae40ae25911d5fa06ba4ded07cb90b8af158077"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.220/babashka-1.13.220-macos-amd64.tar.gz"
      sha256 "ebbfdf159e8d5ee8b7015b15c6558b2039fe76478de893cf317c8c50805340de"
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
