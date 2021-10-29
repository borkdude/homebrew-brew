class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.4/babashka-0.6.4-linux-amd64.tar.gz"
    sha256 "56ab0d626e5ed0c5022f71682d49700f628839f587210feab3672956641d5e01"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.4/babashka-0.6.4-macos-amd64.tar.gz"
    sha256 "a475c2919a485a7985c02e12fae1c9a57c9207f80930ab4188823b8fc6663628"
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
