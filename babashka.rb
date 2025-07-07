class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.205"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.205/babashka-1.12.205-linux-amd64-static.tar.gz"
    sha256 "fda98ec47597be8f4fea9dddacdb4794517e8856646a83c5882c3898a3828a23"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.205/babashka-1.12.205-macos-aarch64.tar.gz"
      sha256 "8d7527580dfcf42bdf6c4e7e1d71e1a99ec103c59bfb0ed39303282ffcbbe746"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.205/babashka-1.12.205-macos-amd64.tar.gz"
      sha256 "8c588acd13d8cc537c573b767bd547ff94154a26a60144c9ad7e1be996636538"
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
