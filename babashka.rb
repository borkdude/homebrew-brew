class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.9.160-SNAPSHOT"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.9.160-SNAPSHOT/babashka-0.9.160-SNAPSHOT-linux-amd64.tar.gz"
    sha256 "aae2e774a9e62bed97bd88f021a9e9f284b98fc9cda3aaf2adc9abfbcfba1201"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.9.160-SNAPSHOT/babashka-0.9.160-SNAPSHOT-macos-aarch64.tar.gz"
      sha256 "a3d8445651fe7672a8bb8ced8b237c6a772c1c951525cdd93133edb0442d4cf7"
    else url "https://github.com/borkdude/babashka/releases/download/v0.9.160-SNAPSHOT/babashka-0.9.160-SNAPSHOT-macos-amd64.tar.gz"
      sha256 "c20cf83f7c7f2dbe4151c76fbe39e5b02e4b68b069af235b53811a6b40c86758"
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
