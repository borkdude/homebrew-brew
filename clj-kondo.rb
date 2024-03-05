class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.03.05"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.03.05/clj-kondo-2024.03.05-linux-static-amd64.zip"
    sha256 "5882cc47bdca28d751f3ce48cd5081b117bde64deeadc70e31580f7bf13f040d"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.03.05/clj-kondo-2024.03.05-macos-aarch64.zip"
      sha256 "1a54cb3108eebd3511c0689dfce91e390b801d63c1433312ba53ec62a2209be8"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.03.05/clj-kondo-2024.03.05-macos-amd64.zip"
      sha256 "fe9401a1556861ed28bd42f690e548273f5b5fa16e420e61bff4edfe4bd246e5"
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
