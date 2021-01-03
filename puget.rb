class Puget < Formula

  desc "Pretty-print EDN with colors."
  homepage "https://github.com/borkdude/puget-cli"
  version "0.0.2"

  if OS.linux?
    url "https://github.com/borkdude/puget-cli/releases/download/v0.0.2/puget-cli-0.0.2-linux-amd64.zip"
    sha256 "a7a92f4bccf712f8ddba6914cdd3aa14b621558bdd105a16b101b5f2f0700d04"
  else
    url "https://github.com/borkdude/puget-cli/releases/download/v0.0.2/puget-cli-0.0.2-macos-amd64.zip"
    sha256 "84ec70977701424128a9767c3b1f4f50ef40458a6c4ddf28e8315e692982411b"
  end

  bottle :unneeded

  def install
    bin.install "puget"
  end

end
