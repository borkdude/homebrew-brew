class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.06.01"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.06.01/clj-kondo-2021.06.01-linux-amd64.zip"
    sha256 "3b7e3f5e4023a1498ecf31df62359c185e4344b97886b36673f82cdf2d62959a"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.06.01/clj-kondo-2021.06.01-macos-amd64.zip"
    sha256 "c95c13148cdc36d17da5edd339a97ab565fbb3ff87622322973dd7621e0e0746"
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
