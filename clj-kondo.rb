class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.05.27"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.27/clj-kondo-2022.05.27-linux-amd64.zip"
    sha256 "0aca918d2a69c79a1cf2dad981f1a4aaaa42f72f8e4f8b6acadf63d28a32b77b"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.27/clj-kondo-2022.05.27-macos-amd64.zip"
    sha256 "a3f2b4d84b4d88cb8f9c74217cba497f7fd7b0d9c56d9749f572c53b937bde2c"
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
