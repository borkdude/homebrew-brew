class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.12.10"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.12.10/clj-kondo-2022.12.10-linux-static-amd64.zip"
    sha256 "937298a30b4ef6ab765183394b7afa70624e377cc177a70c3d5b936540bf8730"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.12.10/clj-kondo-2022.12.10-macos-aarch64.zip"
      sha256 "39c6e1ff29c78eae0f8e923ec00851dec2500548c50dfc5417312e314fa4747b"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.12.10/clj-kondo-2022.12.10-macos-amd64.zip"
      sha256 "59dad24dc29680ca10d893b397fa4495943accbcf06e0e5e99b7b18a55170ee2"
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
