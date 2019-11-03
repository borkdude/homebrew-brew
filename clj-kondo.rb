class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.11.03"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.11.03/clj-kondo-2019.11.03-linux-amd64.zip"
    sha256 "0f29e5684dcdae71a1d3ac86fb91c2d01b135ef1f70a5f64de2a4ea7ee01323b"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.11.03/clj-kondo-2019.11.03-macos-amd64.zip"
    sha256 "3d6b4f95624b591d08bdfb11b651683bbe0565c5a73c788144b1abbe2f3fbae6"
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
