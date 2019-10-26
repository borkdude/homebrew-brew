class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.10.26"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.10.26/clj-kondo-2019.10.26-linux-amd64.zip"
    sha256 "ec8176ca9860139eff7596182cb483d127311f2cf7e6f963417555752c6f5171"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.10.26/clj-kondo-2019.10.26-macos-amd64.zip"
    sha256 "5aeadf3aec96cc79bc405ee181aa0ad54f85cd39b4278675bc684da50ba52a2f"
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
