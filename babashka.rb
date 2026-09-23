class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.224"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.224/babashka-1.13.224-linux-aarch64-static.tar.gz"
      sha256 "1f7669f6739e4480449f536d4ef6ed788e9cfafe158ef9700bbf6bffda6396ac"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.224/babashka-1.13.224-linux-amd64.tar.gz"
      sha256 "9640da489dbbeeb4830cd87f22e44e26af0f8313160c491c61d9c245e86206f6"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.224/babashka-1.13.224-macos-aarch64.tar.gz"
      sha256 "ebd763314a05a74ab884b28d69e4d6235652e65fb4aa57118e2e165f7de0f438"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.224/babashka-1.13.224-macos-amd64.tar.gz"
      sha256 "e946bd4bfe4f7b5ebbf2afdc4cb696f4e33b588a95d9f6ca1694770543f1629c"
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
