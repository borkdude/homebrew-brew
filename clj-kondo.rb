class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.10.23"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.10.23/clj-kondo-2025.10.23-linux-static-amd64.zip"
    sha256 "78800fe62fb20be046067e7b90e0066a4cdf0e96b5dde1e0d73c8e141fa70663"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.10.23/clj-kondo-2025.10.23-macos-aarch64.zip"
      sha256 "9915429099bdb5d35ce0cc88e0e346d9be78a7fd44d9ea8689b19843927e3a07"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.10.23/clj-kondo-2025.10.23-macos-amd64.zip"
      sha256 "b6876f9311f2998cce0df226adf4792eacf287cfeba9bd067f44d56650956970"
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
