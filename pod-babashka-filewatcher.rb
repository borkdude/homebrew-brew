class PodBabashkaFilewatcher < Formula

  desc "Babashka pod for FILEWATCHER."
  homepage "https://github.com/babashka/pod-babashka-filewatcher"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1/pod-babashka-filewatcher-0.0.1-linux-amd64.zip"
    sha256 ""
  else
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1/pod-babashka-filewatcher-0.0.1-macos-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "pod-babashka-filewatcher"

  end

end
