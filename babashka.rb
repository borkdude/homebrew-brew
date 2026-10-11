class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.226"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.226/babashka-1.13.226-linux-aarch64-static.tar.gz"
      sha256 "85d62914ce1183634e9f81db67ec8e4db41f927ab8caf5b92076da9e46fda679"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.226/babashka-1.13.226-linux-amd64.tar.gz"
      sha256 "c0174f7de467f00726e696a03b40b238e9a729656764169cbb7b01f4e71f6afb"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.226/babashka-1.13.226-macos-aarch64.tar.gz"
      sha256 "584f8679022d9f23f897fcb6ebb3f6c05508483c34b555a6730fd38bf620a5a2"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.226/babashka-1.13.226-macos-amd64.tar.gz"
      sha256 "a86e99ccffdb468a9f059dd1658063b97cd68c071e8581289fb9a0ac8fb72db8"
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
