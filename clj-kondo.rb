class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.07.31-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.31-alpha/clj-kondo-2019.07.31-alpha-linux-amd64.zip"
    sha256 "88b9118d37dd00ae6bc18c7baf6f959e8faf7526e458a7e515e6076eaad0edaa"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.31-alpha/clj-kondo-2019.07.31-alpha-macos-amd64.zip"
    sha256 "5b616285a01c85ac2fe5da5613dae5ee370b0f40dcfc0b8bf58ee3767b8b81b5"
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
