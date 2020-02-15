class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.02.15"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.02.15/clj-kondo-2020.02.15-linux-amd64.zip"
    sha256 "b533a840b04f6d74eb0f6646d67039e87936b28c4972922f96f898fc0025ae76"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.02.15/clj-kondo-2020.02.15-macos-amd64.zip"
    sha256 "a37752628ed280c892cef0566612b153dcbe05ad44a25f49c895b1f40eb0de09"
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
