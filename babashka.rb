class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.8.156"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.8.156/babashka-0.8.156-linux-amd64.tar.gz"
    sha256 "f89784c03eaf271f1fb40d078e318df11ddbf839da4c20decaa3e9d26fa7b53e"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.8.156/babashka-0.8.156-macos-aarch64.tar.gz"
      sha256 "94fa3e4fb0dee9e8f129cf1b444a1a96329310e501d6d2a257e0608495905458"
    else url "https://github.com/borkdude/babashka/releases/download/v0.8.156/babashka-0.8.156-macos-amd64.tar.gz"
      sha256 "e4722dff56405363e8cc9d203ac000e77c22e74665ec3c45f0233d0fb534811e"
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
