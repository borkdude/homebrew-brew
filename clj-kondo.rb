class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.05.26-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.26-alpha/clj-kondo-2019.05.26-alpha-linux-amd64.zip"
    sha256 "41bf4de6fd9302b62f8199858352e47bb348560bf065ee99aa91f9aa671fed2c"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.26-alpha/clj-kondo-2019.05.26-alpha-macos-amd64.zip"
    sha256 "f88a440c3adfd30b777d2aaf84c3ef47923bed661caa8827f9990fe9e0a70da6"
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
