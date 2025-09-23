class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.09.22"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.09.22/clj-kondo-2025.09.22-linux-static-amd64.zip"
    sha256 "d669f23cba8a0f9f56fe745a01a50fb6923d365fa5c0ef0c701ac4f9a1d8e6c3"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.09.22/clj-kondo-2025.09.22-macos-aarch64.zip"
      sha256 "51b40dbf39f78a631bebeaa8dcdce715de15d13aab61723eda318ee231d69bec"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.09.22/clj-kondo-2025.09.22-macos-amd64.zip"
      sha256 "2cc63393ffd8e5f28d701d78084c6623eed118409691907b1dea22c983b93801"
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
