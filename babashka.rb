class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.0.167"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.0.167/babashka-1.0.167-linux-amd64.tar.gz"
    sha256 "5171278ac264d3dba5be511fd1def6d0da600a2ab16cc55d53bd081f0f2dcd6f"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.0.167/babashka-1.0.167-macos-aarch64.tar.gz"
      sha256 "de829f04f551ae5c63f96cf8ee9461063a3e2066250d7a248de57cea81924460"
    else url "https://github.com/babashka/babashka/releases/download/v1.0.167/babashka-1.0.167-macos-amd64.tar.gz"
      sha256 "e192d8983811206ab34f763da08cfe1e0c3afc8e498c0e7b70fe6c241c83a8f0"
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
