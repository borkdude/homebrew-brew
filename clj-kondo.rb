class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.10.20"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.10.20/clj-kondo-2023.10.20-linux-static-amd64.zip"
    sha256 "362c03b5248518f82b21b0978f80755d77be1e48979042564b4559b70d160256"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.10.20/clj-kondo-2023.10.20-macos-aarch64.zip"
      sha256 "4882f5473f6d0e5a7b23a12dc53d8e831b106abc13fd56129a6d77985f85c8c4"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.10.20/clj-kondo-2023.10.20-macos-amd64.zip"
      sha256 "a928d3bdc82a2545142ef944a58be16733fc15a26d97779631eca0dd24da0f6e"
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
