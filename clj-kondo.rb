class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.01.19"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.01.19/clj-kondo-2026.01.19-linux-static-amd64.zip"
    sha256 "99e3e9eaa977887ecb6df1452b5d8ffa86ef869d8452ed7c222228084c44c1a7"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.01.19/clj-kondo-2026.01.19-macos-aarch64.zip"
      sha256 "911f3803be075d59172cb92f0d39aea077fc7550dcdc4e8c946d61552fa51a12"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.01.19/clj-kondo-2026.01.19-macos-amd64.zip"
      sha256 "9b89f0265ccf8c6cdcb083708a07af5b4a29047ecae4d322646871dccd5640f5"
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
