class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.182"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.182/babashka-1.3.182-linux-amd64-static.tar.gz"
    sha256 "54af57bfd51fc89b5cbe98391576eb46942d4160496b439c749744fd469e3c66"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.182/babashka-1.3.182-macos-aarch64.tar.gz"
      sha256 "29c90dd867e331287deeee1729141186aca00aea4013a0b038076ca85e257af9"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.182/babashka-1.3.182-macos-amd64.tar.gz"
      sha256 "9ac509c6ed97b70d5dbde781626058137906d727673d337dada8f7328a1ae62b"
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
