class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.04.15-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.15-alpha/clj-kondo-2019.04.15-alpha-linux-amd64.tar.gz"
    sha256 "4557bd341288ddbf22cec044761d317f4e03198fb5d85d3e95a29aee1b404224"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.15-alpha/clj-kondo-2019.04.15-alpha-macos-amd64.tar.gz"
    sha256 "f56edeb45d9d84855684d9f7cf7fff6f89293ddcd0aa582a0ae0e571f0812e1d"
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
