class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.01.20"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.20/clj-kondo-2023.01.20-linux-static-amd64.zip"
    sha256 "3b02d5b63add01066e5d7573b72cfb7ffeedd36fb12f137d78e02065228ef427"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.20/clj-kondo-2023.01.20-macos-aarch64.zip"
      sha256 "69db04f3741b566afc82a23e7b1d2fabe730e2a159a960a91708684d25dbc291"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.20/clj-kondo-2023.01.20-macos-amd64.zip"
      sha256 "53f73c94053a82d4406e238998e64e212e3770ab579a36a128496e3851319d51"
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
