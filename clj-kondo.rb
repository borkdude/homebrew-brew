class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.11.02"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.11.02/clj-kondo-2022.11.02-linux-amd64.zip"
    sha256 "79fd565fbe12d5335e678e908e8121cac460be17936b74e0110a8f3c1c1c5b07"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.11.02/clj-kondo-2022.11.02-macos-aarch64.zip"
      sha256 "ec249a42112657b06f657f159475e9dc629f27a0068b2b8fa3676e6eb6484645"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.11.02/clj-kondo-2022.11.02-macos-amd64.zip"
      sha256 "f027f09a413cca6cf758f6ba0b5b45d8725b586558acfa643fac4c3d19d42c3c"
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
