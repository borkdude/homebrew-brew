class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.07.28"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.07.28/clj-kondo-2025.07.28-linux-static-amd64.zip"
    sha256 "d6449daf243516fdc703f0629cb077ddfbe1981a5e21a3d1421708f22d1b6ce7"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.07.28/clj-kondo-2025.07.28-macos-aarch64.zip"
      sha256 "7f19efdc738326bfca8f0b661df9b76d0dc95ed7a7fb0c31a566f3965bf9feb5"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.07.28/clj-kondo-2025.07.28-macos-amd64.zip"
      sha256 "43af638332ba616313e37001fb6560678cbb774418e4227bd52ffa93085b76e6"
    end
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
