class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.04.07"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.04.07/clj-kondo-2025.04.07-linux-static-amd64.zip"
    sha256 "085bee03b85108862540f790d31035863fe220ba317edb94b6407ad6a86a4f79"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.04.07/clj-kondo-2025.04.07-macos-aarch64.zip"
      sha256 "512920cf599a0ae83cc53714aa768025b4c97e25c13c28de1a5fcb51f6a314b6"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.04.07/clj-kondo-2025.04.07-macos-amd64.zip"
      sha256 "de5ea2125cceb3fc6c578489cbc9ce97d8519a60977c660ca55d0ccdd58b5d9e"
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
