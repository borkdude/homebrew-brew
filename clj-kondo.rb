class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.02.20"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.02.20/clj-kondo-2025.02.20-linux-static-amd64.zip"
    sha256 "8ceda3e41379677073b896d68bc147da8fc6825de544c11eeaa44ae200e65bb7"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.02.20/clj-kondo-2025.02.20-macos-aarch64.zip"
      sha256 "aad5451e3d04f874e7ef3d766d244350474cef318096a2c1b71ff26b3683073d"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.02.20/clj-kondo-2025.02.20-macos-amd64.zip"
      sha256 "96cf01d1ee0922b64dbf5b5eb75fd7e7e99fe9ae9f71c9edff2c27bf3e8057d4"
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
