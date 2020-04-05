class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.04.05"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.04.05/clj-kondo-2020.04.05-linux-amd64.zip"
    sha256 "8d6b22e42cbc2155bf037b497d71080c9b939d3cb974c743d5436da216722538"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.04.05/clj-kondo-2020.04.05-macos-amd64.zip"
    sha256 "d3e0a0b05ed05cb12cf7561a16baedf8f454874f59b66517eab86d1bbda34a32"
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
