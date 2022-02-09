class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.02.09"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.02.09/clj-kondo-2022.02.09-linux-amd64.zip"
    sha256 "0751a7791b2dd4af40a028384335e2ea50c9ca0c1ab0ba4b5c1fa543d564aed8"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.02.09/clj-kondo-2022.02.09-macos-amd64.zip"
    sha256 "ab685e1ce47e8887c4d1ab2b186fbc97e0a92e3d20766e27d5a1ab309ecd63aa"
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
