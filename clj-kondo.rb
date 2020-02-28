class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.02.28"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.02.28/clj-kondo-2020.02.28-linux-amd64.zip"
    sha256 "523ae1fbaca452cf720f6c278fb3e50201e49813b4d084568e3532ab400d7582"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.02.28/clj-kondo-2020.02.28-macos-amd64.zip"
    sha256 "0b43acddcd0cd702d9f96c3c102bf7b54c6798577ed1adc412912810c145346f"
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
