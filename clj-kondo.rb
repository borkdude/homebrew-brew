class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.01.13"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.01.13/clj-kondo-2020.01.13-linux-amd64.zip"
    sha256 "efdf4dc30abbd4b2853392c27a0b7becb1d85e8e7cc2b9ec1197b5b03b89c086"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.01.13/clj-kondo-2020.01.13-macos-amd64.zip"
    sha256 "1692a8d3d29028d44a5e89f07d2eb577b34678ffa3afcce5f6d4e9cf23d5173c"
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
