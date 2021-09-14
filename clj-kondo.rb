class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.09.14"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.09.14/clj-kondo-2021.09.14-linux-amd64.zip"
    sha256 "6fb97e636c18b027433994549bf045a01e2b9d7a7f1667a1fb4fe7d00051ee88"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.09.14/clj-kondo-2021.09.14-macos-amd64.zip"
    sha256 "b4848fa947883f67e90d4a37f06f551982ed26a26f1e781713016aa634877fad"
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
