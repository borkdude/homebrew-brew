class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.214"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.214/babashka-1.12.214-linux-aarch64-static.tar.gz"
      sha256 "b6bc6d28a41cb303b429cdbd565311a046719c842dcb25e8ad1ed2929f9145fe"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.214/babashka-1.12.214-linux-amd64-static.tar.gz"
      sha256 "2926098700f6e230b21007871b47844280d29e641959b693535a5d74e4dab4a3"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.214/babashka-1.12.214-macos-aarch64.tar.gz"
      sha256 "6a78b6489f126d8ad74ac991930712d2b153bc7b184c461b0243cae2d3f16f88"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.214/babashka-1.12.214-macos-amd64.tar.gz"
      sha256 "c47c10dbfd3e20cf006c99868779c06b60d7531995bcc0189e6cce309ea1f217"
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
