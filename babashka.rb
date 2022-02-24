class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.6"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.6/babashka-0.7.6-linux-amd64.tar.gz"
    sha256 "bfdb05eb74cbba8e722a4c31eb4aea7b22255be20ea560de2519d28f3c18d704"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.6/babashka-0.7.6-macos-amd64.tar.gz"
    sha256 "65182c55b9a54298e913c87033ae141c80f7a0d9f15f741614ec1c855b77f063"
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
