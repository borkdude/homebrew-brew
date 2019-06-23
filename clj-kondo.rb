class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.06.23-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.23-alpha/clj-kondo-2019.06.23-alpha-linux-amd64.zip"
    sha256 "7bea1694fe6704da6c5781d09c95a6b70e1027ae5ae0131d96692f8afee0ade6"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.23-alpha/clj-kondo-2019.06.23-alpha-macos-amd64.zip"
    sha256 "697cab2b97f38ba5de162000a192f8a4efb6d72d50ae03e2858585587295517a"
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
