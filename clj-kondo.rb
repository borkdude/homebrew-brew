class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.05.01-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.01-alpha/clj-kondo-2019.05.01-alpha-linux-amd64.tar.gz"
    sha256 "52afd7616acb47bcf7f2b1a6781a7dfea7411e2475d65c2b8a8c986baf48fa3b"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.01-alpha/clj-kondo-2019.05.01-alpha-macos-amd64.tar.gz"
    sha256 "a0c54b2a69f77ab5aa2e28ecacfdd07e01f3d7b95869414737ae33f67d189275"
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
