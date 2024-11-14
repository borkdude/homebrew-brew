class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.11.14"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.11.14/clj-kondo-2024.11.14-linux-static-amd64.zip"
    sha256 "37c5236db4cc9f57771320107ae004503402b90b2fae7eb0fc365ee2ad5c9e2f"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.11.14/clj-kondo-2024.11.14-macos-aarch64.zip"
      sha256 "c22fcd53639481b0829177f4332ce51f3848e0eb1b99abd4a62888c5b0d2f488"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.11.14/clj-kondo-2024.11.14-macos-amd64.zip"
      sha256 "daea65614210063179671655b6a57e8d3d4be2c8d9ec52459f4dba91ff80f44f"
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
