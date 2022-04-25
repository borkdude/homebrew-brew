class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.04.25"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.04.25/clj-kondo-2022.04.25-linux-amd64.zip"
    sha256 "999a03906ff1961de7ce98d58149e5715860aa917e7a5c9c507fc83db493e978"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.04.25/clj-kondo-2022.04.25-macos-amd64.zip"
    sha256 "f6fc59eaa9edb1eed5ed987a12b340492f2ebcbf146fc441539a8a1682152a5d"
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
