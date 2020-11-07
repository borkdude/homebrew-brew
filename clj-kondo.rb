class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.11.07"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.11.07/clj-kondo-2020.11.07-linux-amd64.zip"
    sha256 "a9488600db73898a937ddb5a2a58ed8e802fd5cc794e4301726c5fd9234f1f7a"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.11.07/clj-kondo-2020.11.07-macos-amd64.zip"
    sha256 "19a14393d5b442b385f37a27ae78b66e8d2bfd3d3068172664a6d78c4fdd6584"
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
