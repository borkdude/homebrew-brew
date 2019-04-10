class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.04.10-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.10-alpha/clj-kondo-2019.04.10-alpha-linux-amd64.tar.gz"
    sha256 "53174d6f8afd6ff0cdca6360c6cbe5f01027c0860b2a757c5c35386a666a783b"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.10-alpha/clj-kondo-2019.04.10-alpha-macos-amd64.tar.gz"
    sha256 "460040923c424fef2a8d0d7ccd9928eb1f937f9b0dc1a22f02f0ad93ba925308"
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
