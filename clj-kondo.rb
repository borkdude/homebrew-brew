class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.10.05"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.10.05/clj-kondo-2022.10.05-linux-amd64.zip"
    sha256 "0f5ef94b42f2c3fd75e8e0bb4a104ea407332a6dcd4b12126d4f64a405fd4562"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.10.05/clj-kondo-2022.10.05-macos-aarch64.zip"
      sha256 "6714ccf3f5484a74ae259baeea5bb9e19f163ba36ec39ea6e6fc10a06df87d60"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.10.05/clj-kondo-2022.10.05-macos-amd64.zip"
      sha256 "1685424d7e4957a8338fd27809a4ef5819f3c0f2e40679c9ea1fc2354b8ae01c"
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
