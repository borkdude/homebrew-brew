class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.05.09"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.05.09/clj-kondo-2020.05.09-linux-amd64.zip"
    sha256 "a086a84c4dca6eee4cc913f1857eedd8d008b7adb1f57d38f9d19b62dc5c46c9"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.05.09/clj-kondo-2020.05.09-macos-amd64.zip"
    sha256 "2891276c642f593904d9fcf114e5a2053ad17be0eed2d3db7a41312308e8164b"
  end

  bottle :unneeded

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
