class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.04.15"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.04.15/clj-kondo-2026.04.15-linux-static-amd64.zip"
    sha256 "183333094581935057eab4b90c19591eb98b386f5bcf0310114159bd43f45b1c"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.04.15/clj-kondo-2026.04.15-macos-aarch64.zip"
      sha256 "f22182837bf82c8869b275f2778231fa79511c546f903bf3c6fc0ec99fb030b0"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.04.15/clj-kondo-2026.04.15-macos-amd64.zip"
      sha256 "4298a2d64cc5b706f1c4f4b4e88f0d5ef6136ac79441928b780243ed959e5492"
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
