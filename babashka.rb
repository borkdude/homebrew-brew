class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.10.163"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.10.163/babashka-0.10.163-linux-amd64.tar.gz"
    sha256 "a19244b7a49ef5b7c735dedbdd8b7e817e31bf2a4734eabf822b792b75e85cb4"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.10.163/babashka-0.10.163-macos-aarch64.tar.gz"
      sha256 "3ba11a506a98400913d72be2294adf2ff66a87a8dc1b791569e4368e39921165"
    else url "https://github.com/borkdude/babashka/releases/download/v0.10.163/babashka-0.10.163-macos-amd64.tar.gz"
      sha256 "5dea13586c7d54db4fb133f89bcc5c1c18b64620841abf8ae9f31bbf7db57c5b"
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
