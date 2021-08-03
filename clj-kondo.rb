class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.08.03"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.08.03/clj-kondo-2021.08.03-linux-amd64.zip"
    sha256 "c8fc7114ed02117b43b9d6b21e464b866205a61e0f496715eade5cf844622fe2"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.08.03/clj-kondo-2021.08.03-macos-amd64.zip"
    sha256 "f38cffeb123bde4b3bc1e2ee5c95f5eab39a001b698abeeb26f6bfba8a781539"
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
