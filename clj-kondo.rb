class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.04.23"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.04.23/clj-kondo-2021.04.23-linux-amd64.zip"
    sha256 "1839f0451524d869bff7aee2513ea9677976be832d63b7130b19e59f21451be8"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.04.23/clj-kondo-2021.04.23-macos-amd64.zip"
    sha256 "0a16336acd84a27a5f9d85cb498f148da624fc3dbe7a331d2588ed74dd534f5b"
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
