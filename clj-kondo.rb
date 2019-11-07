class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.11.07"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.11.07/clj-kondo-2019.11.07-linux-amd64.zip"
    sha256 "87c2b0f04b8065c9dc22332dbef9bf24b140162b0ad297f5a26e4738512f4f22"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.11.07/clj-kondo-2019.11.07-macos-amd64.zip"
    sha256 "309c3e0771c85daa63390d0aa4580054b6d23ebbccd0fa867aaf09f83d03b6cf"
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
