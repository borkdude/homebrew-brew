class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.04.14"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.04.14/clj-kondo-2023.04.14-linux-static-amd64.zip"
    sha256 "2d7833b39f1c382bba4d9b17c513982550e36d440ed43796ae43926afccbda7b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.04.14/clj-kondo-2023.04.14-macos-aarch64.zip"
      sha256 "494878acc8f8ff96b3a4068edb6180f9cddbb67ff64dc3f4f99afb6bc9baf1cb"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.04.14/clj-kondo-2023.04.14-macos-amd64.zip"
      sha256 "1fec1f6d4c3cf995ab68d97087911499c9236b9423e525a7ea848d1bba3f158d"
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
