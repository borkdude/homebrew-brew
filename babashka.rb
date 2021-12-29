class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.7.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.2/babashka-0.7.2-linux-amd64.tar.gz"
    sha256 "eaf9df0df8d63415e7436033525ca373b6e199effadafe77b13dc5c3d71159bb"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.2/babashka-0.7.2-macos-amd64.tar.gz"
    sha256 "9d163fef77d8c13c94e841ab20b3f25a30230b72fce8295fe22c162f47c08708"
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
