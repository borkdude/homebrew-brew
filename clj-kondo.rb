class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.03.22"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.03.22/clj-kondo-2021.03.22-linux-amd64.zip"
    sha256 "446737baaf4e18b2de355f9a15f0632dd202dc890f737971cf1bbd64f0d14766"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.03.22/clj-kondo-2021.03.22-macos-amd64.zip"
    sha256 "efe01cb7ae858957eeb2721af628ea8385868f72d6b257aed560b57f38689f6f"
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
