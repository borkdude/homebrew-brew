class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.11.23"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.11.23/clj-kondo-2019.11.23-linux-amd64.zip"
    sha256 "e186016cae7f66012a641088b0e10c6ad19df93ed7a6ee1046989b718a5e050f"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.11.23/clj-kondo-2019.11.23-macos-amd64.zip"
    sha256 "b2177e554b5a8ac702fe32f161b5f1603f85be7319b21404a00bb95885395b08"
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
