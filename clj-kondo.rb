class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.10.11-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.10.11-alpha/clj-kondo-2019.10.11-alpha-linux-amd64.zip"
    sha256 "36b79ed7ec1889e239c62739e292b248f52525530c2a89d8396a07eb66e3f9f9"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.10.11-alpha/clj-kondo-2019.10.11-alpha-macos-amd64.zip"
    sha256 "f6d86b1dfd4d29a9d3e2482c840fbd30e11da5182c4f595a5e4b95ea0d813567"
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
