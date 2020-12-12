class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.12.12"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.12.12/clj-kondo-2020.12.12-linux-amd64.zip"
    sha256 "99e6a288e59c0721a49c299187b125fb0d7ca4463056ca5eeef635ad81d3d61f"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.12.12/clj-kondo-2020.12.12-macos-amd64.zip"
    sha256 "e3477b85d6af0663443b45fa1b987aa855593491cdd91729b322ea44d761cee4"
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
