class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.05.12-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.12-alpha/clj-kondo-2019.05.12-alpha-linux-amd64.tar.gz"
    sha256 "b63514fd992e9a05bde3a673799a02018538dc39fd36063f2f225e45d4264275"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.12-alpha/clj-kondo-2019.05.12-alpha-macos-amd64.tar.gz"
    sha256 "f78611cdedab0986c3392bb81a551bfd61bfe5f3c2333f9c9ea3853d9e379d16"
  end

  bottle :unneeded

  def install
    bin.install "clj-kondo"
  end

  test do
    testfile = testpath/"test.clj"
    testfile.write "(defn foo [x] x) (foo 1 2 3)"
    assert_match "Wrong number of args (3) passed to user/foo",
                 shell_output("#{bin}/clj-kondo --lint #{testfile} 2>&1")
  end
end
