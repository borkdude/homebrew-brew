class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.02.17"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.02.17/clj-kondo-2023.02.17-linux-static-amd64.zip"
    sha256 "d2459273918c5dd052af0c034b187b05fee59fec7cc9652b002e8f58b8c28087"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.02.17/clj-kondo-2023.02.17-macos-aarch64.zip"
      sha256 "467f6566f4b9d1d19ff737d07054b86421ac3460a410d60f3e7bb362fc135e8c"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.02.17/clj-kondo-2023.02.17-macos-amd64.zip"
      sha256 "8df3c4de1ab60e91b9a4a47231891d9532b9f7957d45ddc668bb9a5bf3d13099"
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
