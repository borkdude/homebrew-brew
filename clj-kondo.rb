class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.01.12"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.01.12/clj-kondo-2026.01.12-linux-static-amd64.zip"
    sha256 "42f62371d797f85b53ce152b788f49ec851d65b7949adc3bcb2852adcb656bf6"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.01.12/clj-kondo-2026.01.12-macos-aarch64.zip"
      sha256 "189f03a7cf350442b3c24d0d68512b5f1f571a781908fc35210648bcb17d070b"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.01.12/clj-kondo-2026.01.12-macos-amd64.zip"
      sha256 "6e80d451c8ccde7bc1479089cb133d6af19916e323915357c8933660ae3451f1"
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
