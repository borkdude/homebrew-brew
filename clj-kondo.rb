class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.03.08"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.03.08/clj-kondo-2022.03.08-linux-amd64.zip"
    sha256 "0448708b3c43480898043c4bf34dd8f424ac44d788c6d56bac0a76f743334fab"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.03.08/clj-kondo-2022.03.08-macos-amd64.zip"
    sha256 "bce0861495f168d197b6954384adf9ff3c2ace9a81bb01a6530697cdf0e0c572"
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
