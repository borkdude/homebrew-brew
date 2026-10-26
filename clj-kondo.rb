class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.10.26"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.10.26/clj-kondo-2026.10.26-linux-static-amd64.zip"
    sha256 "cb56971158407311d469e2a639347efb19b9cc34f07ed9d9b3013fb975cba0a3"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.10.26/clj-kondo-2026.10.26-macos-aarch64.zip"
      sha256 "167c9fa6cb7e2b50370e05d9a2dd536fdcec9aa207c94ae82813738894f9580a"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.10.26/clj-kondo-2026.10.26-macos-amd64.zip"
      sha256 "46716b2c4fa250f9c267c8f6d140ef7ed6d5a1c4c3798720c634142b5fa35bf9"
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
