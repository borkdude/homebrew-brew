class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.07.29"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.07.29/clj-kondo-2020.07.29-linux-amd64.zip"
    sha256 "0ebb3e7a34527ca28bb368410fb17c962c235a36b94d0d3fac649e7bb11a5cf3"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.07.29/clj-kondo-2020.07.29-macos-amd64.zip"
    sha256 "8ac860a4756528ac7854338885678b5d00cf563b0914d070c8b45f89ea466d28"
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
