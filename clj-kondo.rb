class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.05.25"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.05.25/clj-kondo-2026.05.25-linux-static-amd64.zip"
    sha256 "ba8742f90555332852a3f63260611ca75cc7ba4e2b6dfe601bf5011bb9402b45"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.05.25/clj-kondo-2026.05.25-macos-aarch64.zip"
      sha256 "595e2dcac9e2c8f355e41f406583bcd26851bb2d192f71f4d7ec169d16004b97"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.05.25/clj-kondo-2026.05.25-macos-amd64.zip"
      sha256 "c54a5e2af73e943e51a48801605d61d4e45e234dc3a62034cf4807a61d12ad23"
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
