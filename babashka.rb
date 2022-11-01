class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.165"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.165/babashka-1.0.165-linux-amd64.tar.gz"
    sha256 "ab66fedb6f76b8406e28d4a0fd3cef5690707095c524937e7e3d6b21328f80fd"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.165/babashka-1.0.165-macos-aarch64.tar.gz"
      sha256 "763ac565a44e87ac6ef6e6be80a67887260003ad424bf76a1962ed86c5f271ea"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.165/babashka-1.0.165-macos-amd64.tar.gz"
      sha256 "7c1f5dd448ca8c52cfc65b38a5c872d8480c444626ce8ed23efc23b1745ca86e"
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
