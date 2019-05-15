class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.05.12-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.12-alpha/clj-kondo-2019.05.12-alpha-linux-amd64.tar.gz"
    sha256 "a618f839ec52d997f1f3804654f314186d5daccf0a85681314bbabcefd66c2cb"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.05.12-alpha/clj-kondo-2019.05.12-alpha-macos-amd64.tar.gz"
    sha256 "6c1ce96e5fecaaa9912e0ad127b3e9499131caf38ab47b4d0f4a1177f4afc64d"
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
