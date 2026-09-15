class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.223"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.223/babashka-1.13.223-linux-aarch64-static.tar.gz"
      sha256 "052c6051d05bf0342f2265090c1c82dd43309530bdb7b262fa72d79fd6ab5a61"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.223/babashka-1.13.223-linux-amd64.tar.gz"
      sha256 "747b4c8161116c5758c39c4d585dc13c42c71fb7203126674d9ca2e25e6340fd"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.223/babashka-1.13.223-macos-aarch64.tar.gz"
      sha256 "2bcde56ea09cd8f8b2683ca11feec975e42cd60e7aa4cac0305b1cce9ca3ba8f"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.223/babashka-1.13.223-macos-amd64.tar.gz"
      sha256 "afd005493b69091fb2b871a3a33c4f5995f3d743ce0e8e64be78adc16e203484"
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
