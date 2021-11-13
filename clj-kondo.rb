class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.10.19"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.10.19/clj-kondo-2021.10.19-linux-amd64.zip"
    sha256 "bad383017ad460aa935c488d9806c459bb395f2a8f4ef57577930aa9143f3bf6"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.10.19/clj-kondo-2021.10.19-macos-amd64.zip"
    sha256 "1194184eb7a758fa8704a274c4940e8a19f2f7684e668401658eaff228224fd0"
  end

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
