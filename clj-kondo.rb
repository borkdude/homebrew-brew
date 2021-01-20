class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.01.20"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.01.20/clj-kondo-2021.01.20-linux-amd64.zip"
    sha256 "0fe17d85eea491f70aa57c8b26c74e7406e1f8ab538ba4d53e4deb79d8129325"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.01.20/clj-kondo-2021.01.20-macos-amd64.zip"
    sha256 "456f9ac17f1d332533962d27ca8050e9be502d5c29c5738da6c1aa33b5b0ded8"
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
