class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.164"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.164/babashka-1.0.164-linux-amd64.tar.gz"
    sha256 "b0d27d2c0080d60974fad3106e913718ed0b50922c2c33934b34c108975e0ea2"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.164/babashka-1.0.164-macos-aarch64.tar.gz"
      sha256 "99840d8c29c92a4d4ad041c1846aa6fb3cbb98ac9e061fc9725d426762f064e2"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.164/babashka-1.0.164-macos-amd64.tar.gz"
      sha256 "8cdef6acb511a3c09606fae0863859e6b76ce959e32a8b5a70f0e40c50c797d3"
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
