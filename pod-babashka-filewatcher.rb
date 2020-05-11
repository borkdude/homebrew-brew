class PodBabashkaFilewatcher < Formula

  desc "Babashka pod for FILEWATCHER."
  homepage "https://github.com/babashka/pod-babashka-filewatcher"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1-SNAPSHOT/pod-babashka-filewatcher-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "2503baf81771e6cdd7aa91caefca35c0528ffdc98875dd5fd612e0b877c5bf83"
  else
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1-SNAPSHOT/pod-babashka-filewatcher-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "4829b7c64b90141376baac6896e4f6458b372a62da6addcf4f4b2e65e7801c5f"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-filewatcher"

  end

end
