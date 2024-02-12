class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.02.12"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.02.12/clj-kondo-2024.02.12-linux-static-amd64.zip"
    sha256 "a40ca76faea2c621e452854a562cbb74fe0396d18f668032aa2d4ed175ea8620"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.02.12/clj-kondo-2024.02.12-macos-aarch64.zip"
      sha256 "ae4047ddf826d9997791c835317169847fc8649ff6af9e178baee996d2be2c90"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.02.12/clj-kondo-2024.02.12-macos-amd64.zip"
      sha256 "84ca93d258b43518e187dc415a48c4ce104c953d56c1e7890672159fd9369271"
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
