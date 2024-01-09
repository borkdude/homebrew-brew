class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.187"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.187/babashka-1.3.187-linux-amd64-static.tar.gz"
    sha256 "9fb3291eca733db697ac939e29da2725325447f8f77f91a46e9fc36addf63561"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.187/babashka-1.3.187-macos-aarch64.tar.gz"
      sha256 "2353d2a34b345f46f6c9a8ceec9c6467c72b533852eecc1a773784eff57a4007"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.187/babashka-1.3.187-macos-amd64.tar.gz"
      sha256 "468e130b5651367b54d9d9b927d2d045f43bbb87437e0467c7562fd45561b9b5"
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
