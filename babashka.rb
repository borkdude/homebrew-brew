class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.216"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.216/babashka-1.12.216-linux-aarch64-static.tar.gz"
      sha256 "3c76a27121599430328abfdc81b7c8007402db8199be560e8418a6320298412a"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.216/babashka-1.12.216-linux-amd64-static.tar.gz"
      sha256 "3e85859b30f18a2dcccdc80453a8a3f811254f953c70dfbc0b731a2fb8476ba3"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.216/babashka-1.12.216-macos-aarch64.tar.gz"
      sha256 "91499b3f430038f9b40e433215256a6e5392942780dca9984d493d2bcca7055d"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.216/babashka-1.12.216-macos-amd64.tar.gz"
      sha256 "8844da19b779b7ad5685cbea7622a1453176170cea104a64c650cb0d0898b64d"
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
