class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.03.04"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.03.04/clj-kondo-2022.03.04-linux-amd64.zip"
    sha256 "2bf3ccd26e5171f4356c0c87e6616485b8e45f57f0af922b47b0d9684759caf7"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.03.04/clj-kondo-2022.03.04-macos-amd64.zip"
    sha256 "096e51d959d7f5482a38ac32bc99e07f6dfe2aaabe8e0f1757352ffe0185440c"
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
