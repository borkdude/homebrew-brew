class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.194"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.194/babashka-1.12.194-linux-amd64-static.tar.gz"
    sha256 "2b38eaaf33b2d3ae9b10d478afbc08e131db9b16159f9e8990eaa77af01f1754"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.194/babashka-1.12.194-macos-aarch64.tar.gz"
      sha256 "9a096dcb979c05a1d26231f7cad0f8f619041fd323dde3cffe1c01c1eb96dc5d"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.194/babashka-1.12.194-macos-amd64.tar.gz"
      sha256 "10d45517079aed318891bffeb141ea933dae4ad5fe2662a9a530d6ee325d77f2"
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
