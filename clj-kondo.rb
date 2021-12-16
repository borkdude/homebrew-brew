class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.12.16"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.12.16/clj-kondo-2021.12.16-linux-amd64.zip"
    sha256 "58c86ba0234dc5590a20028ed5d5522b3249b30d9232a2a3c497030488cb5d9b"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.12.16/clj-kondo-2021.12.16-macos-amd64.zip"
    sha256 "92161172373fa626cfa4559dbe4590b1a40ca3c19eeb8e1ae37baf9b2c7edb24"
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
