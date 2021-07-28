class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.07.28"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.07.28/clj-kondo-2021.07.28-linux-amd64.zip"
    sha256 "59889f4ca6b932c120f4b951170703a148593c0d62da4be3270bf57c55c8cd84"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.07.28/clj-kondo-2021.07.28-macos-amd64.zip"
    sha256 "04e4c7eaeb928082ff4aec256ad408bc016446171b860a5d2b202a5ce0a5ae95"
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
