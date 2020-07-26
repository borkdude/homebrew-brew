class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.07.26"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.07.26/clj-kondo-2020.07.26-linux-amd64.zip"
    sha256 "56a388205ff1ff01eb6015a0494fc91f32610c9a30eee7e1c8c9ae08f25821ec"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.07.26/clj-kondo-2020.07.26-macos-amd64.zip"
    sha256 "61f03658126cceeef4b33c8695cadd2d65ec09c05de1ed2eee6edb0d563edfa8"
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
