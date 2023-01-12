class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.01.12"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.12/clj-kondo-2023.01.12-linux-static-amd64.zip"
    sha256 "332e081cf60500cbd09da336880d6a0ba466e00d637d2f1f2f439f399b5e8e61"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.12/clj-kondo-2023.01.12-macos-aarch64.zip"
      sha256 "55a5facc6bb69bb7f5c4def8f6e39b3f45b9414da99bd1d8a4e1bcf9a94c7457"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.12/clj-kondo-2023.01.12-macos-amd64.zip"
      sha256 "d4d66f1dbbb7ec852753a5efc2405150ecbc61a741c9326ec5b58e8fcff29269"
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
