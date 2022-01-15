class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.01.15"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.01.15/clj-kondo-2022.01.15-linux-amd64.zip"
    sha256 "2cbcde2c476df7e80bac00aa9204dc5d2bd62151ba0a627d9a47387c84277ae1"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.01.15/clj-kondo-2022.01.15-macos-amd64.zip"
    sha256 "9e1516bf46eafe63357d41bee3da60e75fe27b9639ed916a421924d9b68f8066"
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
