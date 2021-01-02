class Puget < Formula

  desc "Pretty-print EDN with colors."
  homepage "https://github.com/borkdude/puget-cli"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/borkdude/puget-cli/releases/download/v0.0.1/puget-cli-0.0.1-linux-amd64.zip"
    sha256 "4287c9f9d013b0a7cac797205318e51e93455d37cb24052fd64bfd5816417ae1"
  else
    url "https://github.com/borkdude/puget-cli/releases/download/v0.0.1/puget-cli-0.0.1-macos-amd64.zip"
    sha256 "f11460a98120ee41d479c93989f7954d3a6b3a1095db4b314e7270f54171a8aa"
  end

  bottle :unneeded

  def install
    bin.install "puget"
  end

end
