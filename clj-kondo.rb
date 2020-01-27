class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.01.27"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.01.27/clj-kondo-2020.01.27-linux-amd64.zip"
    sha256 "8107fcbf341280de2c7c6a11dd3428c27b7ccb380061a9fad544d59191eec48a"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.01.27/clj-kondo-2020.01.27-macos-amd64.zip"
    sha256 "4b8d8474f034a60b624e97b0fea5f10f7ad356357434726eef4e4e33943acdf7"
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
