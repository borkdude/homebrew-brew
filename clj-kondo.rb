class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.12.08"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.12.08/clj-kondo-2022.12.08-linux-amd64.zip"
    sha256 "97a861b98e00c64dc5fc9e346e7a344006fb406e06b68b602ca516db865f0f7b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.12.08/clj-kondo-2022.12.08-macos-aarch64.zip"
      sha256 "2f7d7212fe67c9808ee991640ea48294f804394da79916476c335558b6055954"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.12.08/clj-kondo-2022.12.08-macos-amd64.zip"
      sha256 "e82501e22247ccc2cde2c5ae5836da35da0cce9938114021d91a89ef6feaf926"
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
