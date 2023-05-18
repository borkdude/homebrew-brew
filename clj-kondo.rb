class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.05.18"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.05.18/clj-kondo-2023.05.18-linux-static-amd64.zip"
    sha256 "020688c82b44fe74d8eb67d7b9997dd6a27b4869cd44c9823d6845da3f641b36"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.05.18/clj-kondo-2023.05.18-macos-aarch64.zip"
      sha256 "f586ba888a8e471147fa881aa03dcb366b23e1d9a1ab7aabdfcccd296cb3731d"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.05.18/clj-kondo-2023.05.18-macos-amd64.zip"
      sha256 "04d5203efd720baf5ad429b151e74477edf752bad332afd23a67bf711134de62"
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
