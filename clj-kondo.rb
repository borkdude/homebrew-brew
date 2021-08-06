class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.08.06"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.08.06/clj-kondo-2021.08.06-linux-amd64.zip"
    sha256 "198bb53ee2bd8d9ccd317bc771474a966c4f8cf5890102c20b8770aa8a783c8c"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.08.06/clj-kondo-2021.08.06-macos-amd64.zip"
    sha256 "e2ff365325bc0a21681213ac7885375a5f6adf4d79843fa24f0b85386b8e4af3"
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
