class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.09.27"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.09.27/clj-kondo-2024.09.27-linux-static-amd64.zip"
    sha256 "632fd46334986801f29ad756bcea06295cc17156c7e0cb21326aaa1d9ceaee69"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.09.27/clj-kondo-2024.09.27-macos-aarch64.zip"
      sha256 "2e581e12a8574aef032653059ff4053279a205047a9372ece83b0aa37be4e851"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.09.27/clj-kondo-2024.09.27-macos-amd64.zip"
      sha256 "8538b1ebfb06e8460a99fed27fafee4e74a9d7ffb916ba5cc0359b89eef90841"
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
