class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.12.15"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.12.15/clj-kondo-2023.12.15-linux-static-amd64.zip"
    sha256 "02ca034284d4f88d5f9ddbf473b4a3a92779bc0d984cecc1523064aa9ea35ad9"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.12.15/clj-kondo-2023.12.15-macos-aarch64.zip"
      sha256 "5eebab321a32f4a900b5e6b085b213dbc39d84a345014b46ccc188988a723173"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.12.15/clj-kondo-2023.12.15-macos-amd64.zip"
      sha256 "8294ae57b8f3d076077de00a6b97d3e63e583f53391669c29f7eeb9bdadaa064"
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
