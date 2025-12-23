class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.12.23"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.12.23/clj-kondo-2025.12.23-linux-static-amd64.zip"
    sha256 "dfe3f8feb64ed19582d4fb07f90c0119ba09c85fc3c115ff2d3639a7024e6045"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.12.23/clj-kondo-2025.12.23-macos-aarch64.zip"
      sha256 "12f7dea03ee2660880839520ac8da3b6090163d7145879e9366b6b762cd80e4c"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.12.23/clj-kondo-2025.12.23-macos-amd64.zip"
      sha256 "517cc39c9c40618960edb3a2c88143b990f1e6c6a0bb3826d8830365b4eed402"
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
