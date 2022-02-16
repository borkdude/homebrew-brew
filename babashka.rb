class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.5/babashka-0.7.5-linux-amd64.tar.gz"
    sha256 "68508258ce67845b44e331a4d3e60f94b2cd79bfce24e5a4e0ee2ba827962ee2"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.5/babashka-0.7.5-macos-amd64.tar.gz"
    sha256 "df53d84de7f08aa7e7b3e3d9ee627e97e0cd4f1995afd876a649744a74dc56be"
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
