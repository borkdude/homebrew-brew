class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.04.21-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.21-alpha/clj-kondo-2019.04.21-alpha-linux-amd64.tar.gz"
    sha256 "3a0652a12c22379a8a685c49955e1de7daf9a948289da0cd801222c4024289d3"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.21-alpha/clj-kondo-2019.04.21-alpha-macos-amd64.tar.gz"
    sha256 "8a84f3810eaf2fda2a25f47b7293c0eb84dc1d0b32406ee3a8885e60a2227ef8"
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
