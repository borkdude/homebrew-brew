class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.09.25"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.09.25/clj-kondo-2021.09.25-linux-amd64.zip"
    sha256 "8754a82dd0391089b5d3ff51fbd42162d4b41b30df51030531165eee23186371"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.09.25/clj-kondo-2021.09.25-macos-amd64.zip"
    sha256 "98f0f1b1440cdbb898bef355c6007d335c28120eb2816c82a0ca3ed20f5356b9"
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
