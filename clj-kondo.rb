class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.02.28"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.02.28/clj-kondo-2021.02.28-linux-amd64.zip"
    sha256 "c5bd0947e4f95c228b74485d4506e9b9e79a114c729ce7bcc7a6f1ab49c85493"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.02.28/clj-kondo-2021.02.28-macos-amd64.zip"
    sha256 "dca379d81aa849afff7d7a3e9100d073af08ef64cac12c2400b72d1cc68bddae"
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
