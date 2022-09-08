class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.09.08"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.09.08/clj-kondo-2022.09.08-linux-amd64.zip"
    sha256 "6aaa6e99449c111cbaa5848f98c3f956071bd9fa109410f083be8a4d060ec453"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.09.08/clj-kondo-2022.09.08-macos-aarch64.zip"
      sha256 "0f2363d4c021662a5780b5aad8ff56c6b086284ccba053f75e0a0ec5ba19e97b"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.09.08/clj-kondo-2022.09.08-macos-amd64.zip"
      sha256 "e60777a1e10e8c6b711e8e47903054779d580101cade8056e8fa6c929b7aed26"
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
