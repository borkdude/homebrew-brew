class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.08.21-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.08.21-alpha/clj-kondo-2019.08.21-alpha-linux-amd64.zip"
    sha256 "dd1eb554942da279ef4d750db99350e8d9ee652bbe154ad71c12a828a215e75c"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.08.21-alpha/clj-kondo-2019.08.21-alpha-macos-amd64.zip"
    sha256 "e97537285108e3f9d438d9fade775b7935cbb42a84064d777d7c771c805cf852"
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
