class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.07.24"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.07.24/clj-kondo-2026.07.24-linux-static-amd64.zip"
    sha256 "759f5483d224c42e2444fb88adb3718682182a266de0e180a79df451bb243e9c"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.07.24/clj-kondo-2026.07.24-macos-aarch64.zip"
      sha256 "16715df69a2741d5e4056525cdec3f4480c051d2be15fa0caf6471011cea5f0d"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.07.24/clj-kondo-2026.07.24-macos-amd64.zip"
      sha256 "82625eabf6f691e110eb8c2815507d164e5d8157eb2b8e07644f022e7474f1ff"
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
