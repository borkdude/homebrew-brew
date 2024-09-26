class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.09.26"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.09.26/clj-kondo-2024.09.26-linux-static-amd64.zip"
    sha256 "8af673efa0c2f67fb4c2e75769dde12ad862e8eb7b8d0de7ea3c4c7096507477"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.09.26/clj-kondo-2024.09.26-macos-aarch64.zip"
      sha256 "c0ffa7496db5ecba50ac0aacceedb9f4286e9d6f540e937d4cf824a901fb9c97"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.09.26/clj-kondo-2024.09.26-macos-amd64.zip"
      sha256 "95d88f51a00eb0ab32bbf1248a22873a9f9dc647fa55cbf96459a83bf0e47e64"
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
