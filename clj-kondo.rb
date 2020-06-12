class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.06.12"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.06.12/clj-kondo-2020.06.12-linux-amd64.zip"
    sha256 "0b704fb8979228232fa76dcc7ce5219c89965b9bac1f889003e437c03c00c931"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.06.12/clj-kondo-2020.06.12-macos-amd64.zip"
    sha256 "07a1667e438049a55bb1ac5d4fa8946f5bf6c623485d47e16fbd0bf1762e9ff5"
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
