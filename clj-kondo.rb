class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.09.09"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.09.09/clj-kondo-2020.09.09-linux-amd64.zip"
    sha256 "d5a5c197de2b6f1a262c2672b085971d5547bd99ef0af56b1ac00a05c79c8ed3"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.09.09/clj-kondo-2020.09.09-macos-amd64.zip"
    sha256 "5fe45df76bd0b05030a60821e6eefa19520330f035619a9516b879d0e43b67b4"
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
