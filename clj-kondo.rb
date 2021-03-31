class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.03.31"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.03.31/clj-kondo-2021.03.31-linux-amd64.zip"
    sha256 "3f6f868bd6fa1fca61783941638fea02c29bed669b929358352c01c3fd631871"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.03.31/clj-kondo-2021.03.31-macos-amd64.zip"
    sha256 "3bd760ec39d8a296a3a5b1a65e93e2333e5c9fb98d3e72dd94e9e51320d13945"
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
