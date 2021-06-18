class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.06.18"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.06.18/clj-kondo-2021.06.18-linux-amd64.zip"
    sha256 "3a31983fb07086e0791de51e0f700a45265b20e4815855c10845da0452d4e9bb"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.06.18/clj-kondo-2021.06.18-macos-amd64.zip"
    sha256 "19418ecb699d10ae5122d4f01b665768ee1f51baf4ac92dba21fab3dd32aee4a"
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
