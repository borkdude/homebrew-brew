class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.05.31"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.05.31/clj-kondo-2021.05.31-linux-amd64.zip"
    sha256 "5b2e2b2e0b0875f6b6e7c8a306aef1cbc46bb7004c54c1052a60f82ea802a172"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.05.31/clj-kondo-2021.05.31-macos-amd64.zip"
    sha256 "e27b66e11dd348251e4d858238578bb5c035e8843e09e6fda6b35e52de7dadcc"
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
