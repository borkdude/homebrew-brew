class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.227"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.227/babashka-1.13.227-linux-aarch64-static.tar.gz"
      sha256 "b3ee011660ec41885e408a8d9f5dffc5d8e34e65c656ce771fe023bc19e21e4b"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.227/babashka-1.13.227-linux-amd64.tar.gz"
      sha256 "c6ce63bffb90ce60a525464a1bd1e9a5e9554e5c09adbb0f8d4af601a5b3ac1d"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.227/babashka-1.13.227-macos-aarch64.tar.gz"
      sha256 "61ad19a70a6e44a93a8a71384e39632e532125c2ababff686a0d1f99c64fe707"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.227/babashka-1.13.227-macos-amd64.tar.gz"
      sha256 "0175002f9b646598de10eec30102c338ef3cb4cb0b654af8dc49e05f9fac4cdc"
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
