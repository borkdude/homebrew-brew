class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.10.10"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.10.10/clj-kondo-2020.10.10-linux-amd64.zip"
    sha256 "58a87022d0206543c8b4d60e82f981306fd453cd212df865eea02220ae107234"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.10.10/clj-kondo-2020.10.10-macos-amd64.zip"
    sha256 "236a3d9ddc6eb5cd53b27bb09d52d4ccb02c4a067b24c77ff50580f8f7b6eb03"
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
