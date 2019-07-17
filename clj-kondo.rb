class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.07.17-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.17-alpha/clj-kondo-2019.07.17-alpha-linux-amd64.zip"
    sha256 "34c0c164a24b3b9ac40f6a1a73e0048dd609057fb33fdd94331b31a942c01cae"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.17-alpha/clj-kondo-2019.07.17-alpha-macos-amd64.zip"
    sha256 "d3cd247810895d78ac4e2e3bc942ee13d1490a43f4553ecded2465ae9144cdcc"
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
