class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.01.16"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.16/clj-kondo-2023.01.16-linux-static-amd64.zip"
    sha256 "5ec544ce977f4a7b331449744d66405c37da6e5a975d5d5e1cbbc1cb1673e1dc"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.16/clj-kondo-2023.01.16-macos-aarch64.zip"
      sha256 "91ce1bb06abb4fc714c01dfda5fcd0a1dfe0dafcf450563ca2b3e7b06b327054"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.01.16/clj-kondo-2023.01.16-macos-amd64.zip"
      sha256 "e4f60322d7bae377cc4ad9a2193a42fdbd1f0d0e3e5be0a3424540ef972b8dee"
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
