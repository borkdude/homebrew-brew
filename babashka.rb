class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.7/babashka-0.6.7-linux-amd64.tar.gz"
    sha256 "51c5c4a451a2272e81bd80fabe3826024e79245c11a40f02e0ae42ace20fdf5b"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.7/babashka-0.6.7-macos-amd64.tar.gz"
    sha256 "ebefe37178449eed273ac9d2b1d061d2c9732830588c2cb86ab9d204e6cd04bb"
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
