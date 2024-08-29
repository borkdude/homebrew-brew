class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.08.29"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.08.29/clj-kondo-2024.08.29-linux-static-amd64.zip"
    sha256 "50c61f637e669a0a88a3c88da0430e5392d1966b78baac9fc326c3ee8a3914e6"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.08.29/clj-kondo-2024.08.29-macos-aarch64.zip"
      sha256 "16b8d988d3011429f19128808a54aa5f10cd0a858e68ab734d2a44be679d0bb2"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.08.29/clj-kondo-2024.08.29-macos-amd64.zip"
      sha256 "1e619076000a29c8f3e8a84c7a67d7bbf3f8373c7718a36f1a0b397eae791f4f"
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
