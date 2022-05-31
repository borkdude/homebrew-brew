class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.05.31"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.31/clj-kondo-2022.05.31-linux-amd64.zip"
    sha256 "b9cc9b70c8d9c2e09fce4e6eeb5bc25f29fee82bb2f0d5793ca4ac7653ea81dc"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.31/clj-kondo-2022.05.31-macos-amd64.zip"
    sha256 "ee244ec07a9d059d4d483c9a2e6939338e3b843fa78949f646573f2c9e4e781e"
  end

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
