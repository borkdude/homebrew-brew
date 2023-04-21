class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.178"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.178/babashka-1.3.178-linux-amd64-static.tar.gz"
    sha256 "5ec431ef8fa6a3cb2d1d3eb473d3e73b315bec21f68b344d5782ce4682ef0192"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.178/babashka-1.3.178-macos-aarch64.tar.gz"
      sha256 "0e2b5bcc9d06534a4f0b1ded4047e76708e0f7f10420045c0f2488122932594c"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.178/babashka-1.3.178-macos-amd64.tar.gz"
      sha256 "f8bb7a963852181848d13c84cc986a3b17f9ffb740ad88bba1a81082529b332c"
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
