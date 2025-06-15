class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.202"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.202/babashka-1.12.202-linux-amd64-static.tar.gz"
    sha256 "ced0ea6585f94651cf77b2097524ab4fc09ee880399686f8d79c67943947fde5"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.202/babashka-1.12.202-macos-aarch64.tar.gz"
      sha256 "f5de34c828d9a882d81bbee0aa18858f42bde29af6a21cb912b8be1b566ff47f"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.202/babashka-1.12.202-macos-amd64.tar.gz"
      sha256 "730d8411696c6f536ebd6b28f3f5fba3316eadf2400400f9365f770fac1d97f8"
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
