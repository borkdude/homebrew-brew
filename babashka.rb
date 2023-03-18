class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.176"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.176/babashka-1.3.176-linux-amd64-static.tar.gz"
    sha256 "b1772d2b04399ed981803b380307888a58068803ecf2c0cd22c43e83b811a9f8"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.176/babashka-1.3.176-macos-aarch64.tar.gz"
      sha256 "d306e3cae540d63704087d17c649cbf4f3d96e0a4a388fe47e39912d4f9e1d41"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.176/babashka-1.3.176-macos-amd64.tar.gz"
      sha256 "29a999a25060d7f56d9c579772628349d2103b3ec2552aed6bbff61be6ef133c"
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
