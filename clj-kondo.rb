class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.07.13"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.07.13/clj-kondo-2023.07.13-linux-static-amd64.zip"
    sha256 "cf5c00b78988ef0f4e2b4d0c98a28eb6794f72a7561bf05e24b091263b845aca"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.07.13/clj-kondo-2023.07.13-macos-aarch64.zip"
      sha256 "b07eed4206f7179f2928fc78b5d5119e8f09a4f0905e7bac904303a5babf0355"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.07.13/clj-kondo-2023.07.13-macos-amd64.zip"
      sha256 "2dabc48b624f7bfab91fa74a1dca71db86398be295a5c5e187466341a2a3680b"
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
