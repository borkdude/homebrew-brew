class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.09.19"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.09.19/clj-kondo-2025.09.19-linux-static-amd64.zip"
    sha256 "3f216b3ec9cfb0fdf9016f1eb18a8e7df4787cd0f5c9967bcea9583c10c2c72b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.09.19/clj-kondo-2025.09.19-macos-aarch64.zip"
      sha256 "e865a6cc0ad07c5ebc91318d990687b8f5052ddb2b55450efd5944e82778535a"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.09.19/clj-kondo-2025.09.19-macos-amd64.zip"
      sha256 "a667be9d0814eb6c38399194a52f7c7a257f015e35048080d3d0a29d40251d46"
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
