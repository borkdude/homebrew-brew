class PodBabashkaFilewatcher < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/babashka/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "087c7ee2b864803b3cbb09396b39d76df7f0ecf25ab2b29c564ca4026b866209"
  else
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "264dc8a962c044623dfb926015991ddbd68a67ca9136f0be8d986b6f58b2ed9d"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
