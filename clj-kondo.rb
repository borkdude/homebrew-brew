class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.05.06-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.06-alpha/clj-kondo-2019.05.06-alpha-linux-amd64.tar.gz"
    sha256 "b2601d4a6c9f139a82c1894f250bc6f36158d74b55337162b9972445b46d142e"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.06-alpha/clj-kondo-2019.05.06-alpha-macos-amd64.tar.gz"
    sha256 "94034bbc5b6231bacf60d70f9b2ece858e3a1331ac0521a3c13e5b6bb913e18e"
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
