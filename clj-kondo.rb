class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.07.24-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.24-alpha/clj-kondo-2019.07.24-alpha-linux-amd64.zip"
    sha256 "dc94c34401ddc759d8446447639281d2c96115b3fc32eca27cd120b90d7df045"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.24-alpha/clj-kondo-2019.07.24-alpha-macos-amd64.zip"
    sha256 "97f6fef3c0564ab175306c4b1ada3c8ea6155c43c56a0f9618a391931cb4e4ca"
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
