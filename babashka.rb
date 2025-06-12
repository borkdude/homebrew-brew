class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.201"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.201/babashka-1.12.201-linux-amd64-static.tar.gz"
    sha256 "1a247be72397d256c4aaf85b25d64d2652f38cb50a989e49559df0c78ee48545"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.201/babashka-1.12.201-macos-aarch64.tar.gz"
      sha256 "f2c8c26b0ebf36072f8640c85a3653c070a45b68f8e1bcfd390918710abd8fd4"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.201/babashka-1.12.201-macos-amd64.tar.gz"
      sha256 "94d28ffd24e4fde6e7c16415e01c020dc047fc552ecc08533bb2ff761a34a5e3"
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
