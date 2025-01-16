class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.01.16"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.01.16/clj-kondo-2025.01.16-linux-static-amd64.zip"
    sha256 "239db17c8a55d047e244b054e2cf92962695cdc6e2dbefb6b14fd33912f0e558"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.01.16/clj-kondo-2025.01.16-macos-aarch64.zip"
      sha256 "b5b05f2c2e31ea7c1722bef5671b064bd3a80fabbb5b948cced9aff386331a87"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.01.16/clj-kondo-2025.01.16-macos-amd64.zip"
      sha256 "40bad5ed1ff069ea20e338a6773e62e672b4fb621ff0cfb44c250634a069887a"
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
