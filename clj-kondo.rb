class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.05.29"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.29/clj-kondo-2022.05.29-linux-amd64.zip"
    sha256 "7dae4ac776aca0f9070349b6e137d35139c0f3e2bb55f8351f0d2967093b2c8e"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.29/clj-kondo-2022.05.29-macos-amd64.zip"
    sha256 "605ac76c21ccd87c964839cb92770ecb359e2e27291c10d5d8654e32a6e25ac1"
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
