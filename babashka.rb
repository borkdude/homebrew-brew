class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.196"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.196/babashka-1.12.196-linux-amd64-static.tar.gz"
    sha256 "a4308371a365f5bb09379f0c9ad4134f3ceeac7a7ea5058dfa51e2de7c631915"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.196/babashka-1.12.196-macos-aarch64.tar.gz"
      sha256 "2a0347736bfb561ce821e8b36bba781e92f0801eba37f3b5f92abd418ea671de"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.196/babashka-1.12.196-macos-amd64.tar.gz"
      sha256 "881bc6787602899815389e26e7a8eeafd71212ebcb3ad11944531b68f7d6b3fb"
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
