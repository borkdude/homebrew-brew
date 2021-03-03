class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.03.03"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.03.03/clj-kondo-2021.03.03-linux-amd64.zip"
    sha256 "5b34edc5ff386fa33d49a75a64c22539032905020558fcd0f41a593d794cf584"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.03.03/clj-kondo-2021.03.03-macos-amd64.zip"
    sha256 "c625b3f34dbfa8921847fcd2b168df3906f4ebe134ea1d42fbb135a717b2aa84"
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
