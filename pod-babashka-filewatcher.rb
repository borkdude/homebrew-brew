class PodBabashkaFilewatcher < Formula

  desc "Babashka pod for FILEWATCHER."
  homepage "https://github.com/babashka/pod-babashka-filewatcher"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1-SNAPSHOT/pod-babashka-filewatcher-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "e4a7a509a40bdb3c13f8ab9bbc59c693f08b53b5844c72d2cadc2498fd70d8cc"
  else
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1-SNAPSHOT/pod-babashka-filewatcher-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "6cff970eaed1fadaddd5d9f7ade3d82df78e4b656c74629016bbf3bcc5a2163c"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-filewatcher"

  end

end
