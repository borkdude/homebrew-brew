class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.04.08"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.04.08/clj-kondo-2022.04.08-linux-amd64.zip"
    sha256 "c7f85529b1ec49eaed0e2e9c73e8878339f4677c9f2644322a4785b931b7e015"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.04.08/clj-kondo-2022.04.08-macos-amd64.zip"
    sha256 "ca785976704b2fc47d22014a4bfedfcdc9c19a5000edb385634fd3cf7b7f31cc"
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
