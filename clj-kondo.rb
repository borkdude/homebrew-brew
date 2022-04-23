class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.04.23"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.04.23/clj-kondo-2022.04.23-linux-amd64.zip"
    sha256 "f5b57e56f3c8dc0a8e1c7d6af3ce836fb74a62b07ce7d809b3c415d9f4db4310"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.04.23/clj-kondo-2022.04.23-macos-amd64.zip"
    sha256 "8f1e5641122b527460ab35b6995d250b858caf468d8c1eda59e33e31c6707de3"
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
