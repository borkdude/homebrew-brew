class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.10.20"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.10.20/clj-kondo-2026.10.20-linux-static-amd64.zip"
    sha256 "316013be2f62e3649ee479e44ea82afb3b7eb64de76e0bbe0c1a2133ef2a7466"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.10.20/clj-kondo-2026.10.20-macos-aarch64.zip"
      sha256 "675c2e508c71afe774cfa402f7959a6580a82f15c15dc935502489ff88133815"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.10.20/clj-kondo-2026.10.20-macos-amd64.zip"
      sha256 "4c3caabc03108d2fc9b1860ae6a140af67c791115e6c1e8eeadc7e943bf49c0f"
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
