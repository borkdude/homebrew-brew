class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.03.17"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.03.17/clj-kondo-2023.03.17-linux-static-amd64.zip"
    sha256 "08e7973b51c145679746e9fe4b3830145e2754d68530ddf9d93fbd62fd3c2fee"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.03.17/clj-kondo-2023.03.17-macos-aarch64.zip"
      sha256 "2727179a47e5356174b415eea0d0bcd05faa8957775377bf055219068892f604"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.03.17/clj-kondo-2023.03.17-macos-amd64.zip"
      sha256 "3794b368c5bebf210688777bea7fd10242ca623233a4d70e467d15597f7ee860"
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
