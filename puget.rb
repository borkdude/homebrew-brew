class Puget < Formula

  desc "Pretty-print EDN with colors."
  homepage "https://github.com/borkdude/puget-cli"
  version "0.0.3"

  if OS.linux?
    url "https://github.com/borkdude/puget-cli/releases/download/v0.0.3/puget-cli-0.0.3-linux-amd64.zip"
    sha256 "1824217d5e28ad196b6e4b34fb16321e32045c2d1b045010ece67f66dcc304b2"
  else
    url "https://github.com/borkdude/puget-cli/releases/download/v0.0.3/puget-cli-0.0.3-macos-amd64.zip"
    sha256 "a8a7f573b61cc8ceb2d5080243fb4534ed5861a167d92905810357ea6dc089f6"
  end

  bottle :unneeded

  def install
    bin.install "puget"
  end

end
