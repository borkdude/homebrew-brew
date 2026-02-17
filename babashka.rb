class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.215"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.215/babashka-1.12.215-linux-aarch64-static.tar.gz"
      sha256 "e444283cdcc4b809fd409da56cf3791a60ed57eeef1f6a4c3ed186daf81de40e"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.215/babashka-1.12.215-linux-amd64-static.tar.gz"
      sha256 "b1b975a54bff97d2ec1b0d712b34368d6add00bf5d3ca56fb2fa5f8f88526d45"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.215/babashka-1.12.215-macos-aarch64.tar.gz"
      sha256 "a7e791110f3f873e3e26264eb471701d0bb5d8e1d1377b7d3132559fc4296417"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.215/babashka-1.12.215-macos-amd64.tar.gz"
      sha256 "1ece4f02092b838372519b7a704d78a352089d028a59a30c94be87094f36a09a"
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
