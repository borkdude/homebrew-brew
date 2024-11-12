class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.195"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.195/babashka-1.12.195-linux-amd64-static.tar.gz"
    sha256 "8308e6bc4dc951e4becc9803790b3df505e3890843943e413a2bbbb471288d92"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.195/babashka-1.12.195-macos-aarch64.tar.gz"
      sha256 "030055a5c02ad33ffdd0ad9689034cd967e6a6e29e9a6de6023f3a07f0a9c608"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.195/babashka-1.12.195-macos-amd64.tar.gz"
      sha256 "99867243d0848176947a7e4faace7e9b5a47c0179aa7d4adfa019e2ffbe81ad3"
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
