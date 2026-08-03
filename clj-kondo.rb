class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.08.03"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.08.03/clj-kondo-2026.08.03-linux-static-amd64.zip"
    sha256 "2a293c2e7163184f0e0324d2e1c3db6b33a39e0bb8ae23a4f6607cc8bf161055"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.08.03/clj-kondo-2026.08.03-macos-aarch64.zip"
      sha256 "615a5eb17cc4bb83e297b0c108945c8775c1821c472dfa0b08272ab1410b801b"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.08.03/clj-kondo-2026.08.03-macos-amd64.zip"
      sha256 "aa85368357b8c02c75e241f6de3e5b487e0dc83580a5e4a5fe87f6f02ec905ee"
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
