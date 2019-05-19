class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.05.19-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.19-alpha/clj-kondo-2019.05.19-alpha-linux-amd64.zip"
    sha256 "bb13e4cc6d739f136b5309cb1a727c0cebf4944bc73497922e0b673ca9fe7909"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.19-alpha/clj-kondo-2019.05.19-alpha-macos-amd64.zip"
    sha256 "def6ce46383e59b130a24e9ed14e9672e1d2dea2baa42aeb1a81076ad046fb16"
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
