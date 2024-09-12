class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.4.192"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.4.192/babashka-1.4.192-linux-amd64-static.tar.gz"
    sha256 "d8371697a727495749f9481414a2fdba5fe702dfc1b74a8ec58195f0a646abd5"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.4.192/babashka-1.4.192-macos-aarch64.tar.gz"
      sha256 "9ed01a7f36e26274d1ba5c5881c04c2866caa5c4b4ed9b447cb47978f44846a6"
    else url "https://github.com/babashka/babashka/releases/download/v1.4.192/babashka-1.4.192-macos-amd64.tar.gz"
      sha256 "8aaba607989944cdcef53964d7322abad7ec46db1fdf5bcc94b3bf02cdc7b4b2"
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
