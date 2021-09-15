class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.09.15"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.09.15/clj-kondo-2021.09.15-linux-amd64.zip"
    sha256 "56292f866071889d8dfd35d64c578eaa8d8a18abec4ae5057c00b46945091d0d"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.09.15/clj-kondo-2021.09.15-macos-amd64.zip"
    sha256 "2fe4541b7038ee8b845cd5a72506a362a219966a4f137d0d178bd1bd9552a340"
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
