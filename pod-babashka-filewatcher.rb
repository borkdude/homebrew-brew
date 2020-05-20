class PodBabashkaFilewatcher < Formula

  desc "Babashka pod for FILEWATCHER."
  homepage "https://github.com/babashka/pod-babashka-filewatcher"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1-SNAPSHOT/pod-babashka-filewatcher-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "2f18a63e04cb83c16674532996760b300107bfec2cc57fc1326c853be721b0c2"
  else
    url "https://github.com/babashka/pod-babashka-filewatcher/releases/download/v0.0.1-SNAPSHOT/pod-babashka-filewatcher-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "9c3729fb87d1dbc665740815e352f907d38163071f917c5801f6ba759cf733bc"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-filewatcher"

  end

end
