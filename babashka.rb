class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.213"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.213/babashka-1.12.213-linux-aarch64-static.tar.gz"
      sha256 "b0859fe416240549112c2c160275f2e28d078180261002588a03a1025d2652ea"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.213/babashka-1.12.213-linux-amd64-static.tar.gz"
      sha256 "c99ea14cdc402207eb86683d6125667e69fccf2e3644de4fdda7a91f65482057"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.213/babashka-1.12.213-macos-aarch64.tar.gz"
      sha256 "27d315d7d21821e092bc3d375f2a99ee365d4b96a422648cd141d21e0979956f"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.213/babashka-1.12.213-macos-amd64.tar.gz"
      sha256 "bcb83aec95a16ea4568a9caccb89953a02f06c3236825afb8a8c41adb51bd585"
    end
  end

  def install
    bin.install "bb"

    # maybe in a future release:
    #   bin.install "bbk"
  end

  test do
    assert_equal "hello\n",
                 pipe_output("#{bin}/bb -e '(println \"hello\")'")
  end
end
