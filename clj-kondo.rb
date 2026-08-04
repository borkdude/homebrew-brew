class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2026.08.04"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2026.08.04/clj-kondo-2026.08.04-linux-static-amd64.zip"
    sha256 "25dce55f597cc7f034f6c5f8bf4195128e3efeb3b22710a066fb67b489e70a3b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.08.04/clj-kondo-2026.08.04-macos-aarch64.zip"
      sha256 "8fe3a57820890a35d843599097276f56ce483a1501abd7f68edd1897770f1559"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2026.08.04/clj-kondo-2026.08.04-macos-amd64.zip"
      sha256 "594b964e1d1d21da66d7505fe2fbd3dec08af95ace788808588ae56a049f3d66"
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
