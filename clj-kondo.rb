class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.06.16-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.16-alpha/clj-kondo-2019.06.16-alpha-linux-amd64.zip"
    sha256 "de3a46f517d98f7773075a7f12c9314569ef5a62cdfc8d0e4ffa0660bebf2046"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.16-alpha/clj-kondo-2019.06.16-alpha-macos-amd64.zip"
    sha256 "ae8031f552eb17bc471a21828f8d9085ae33b98a3434f2c7706a863e4163d8e4"
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
