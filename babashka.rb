class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.2.174"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.2.174/babashka-1.2.174-linux-amd64-static.tar.gz"
    sha256 "58065366943eedac648d8c51bf72738c7581408bbb2c08077486e2741b3c8fef"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.2.174/babashka-1.2.174-macos-aarch64.tar.gz"
      sha256 "4103e134a3b37ab0ba3d9e6818cb7ffb6ba998529d4bd2d63e7b8240c84358ee"
    else url "https://github.com/babashka/babashka/releases/download/v1.2.174/babashka-1.2.174-macos-amd64.tar.gz"
      sha256 "172856c2b180e5d61102489c277291ef0661d341f2e72a0a1b5a6df66a4b4e3e"
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
