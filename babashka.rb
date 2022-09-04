class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.9.162"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.9.162/babashka-0.9.162-linux-amd64.tar.gz"
    sha256 "9dd7f35cd9ecc61aa8546bf47bcc1d6fa45f50ab89b8edf0aebe811e0195fa8b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.9.162/babashka-0.9.162-macos-aarch64.tar.gz"
      sha256 "d9095d354e67a09e29a1883e1e34b81ee2c5114b55f10783245b2d14d2d967ea"
    else url "https://github.com/borkdude/babashka/releases/download/v0.9.162/babashka-0.9.162-macos-amd64.tar.gz"
      sha256 "1397388bbf0b8b9d40038344a708afa0f37b7925792012f64c2d8c4b1ac42026"
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
