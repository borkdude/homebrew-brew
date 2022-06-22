class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.06.22"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.06.22/clj-kondo-2022.06.22-linux-amd64.zip"
    sha256 "ffdbc856628291a0d311020bf114c9ebea15d49b78d5b7bdb5ed92e02622f014"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.06.22/clj-kondo-2022.06.22-macos-aarch64.zip"
      sha256 "d4c11740a78917a49591a9d7ec2b8942d40b16f97cd5db2f32cce7cf93789ccf"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.06.22/clj-kondo-2022.06.22-macos-amd64.zip"
      sha256 "8495ef76c3c376943f3d826f6c9aa95015df5e84cb405916e05a43e3561323a2"
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
