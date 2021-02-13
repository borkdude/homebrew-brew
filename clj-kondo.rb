class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.02.13"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.02.13/clj-kondo-2021.02.13-linux-amd64.zip"
    sha256 "99f0439dd4d69a16434b8c2a3674ac05412d8ce33b526f35567ea71c4f08e2ca"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.02.13/clj-kondo-2021.02.13-macos-amd64.zip"
    sha256 "d5f77f997e0f1a099d00e59549a9f80fe520b421e93b0c53ac5ff044296bf776"
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
