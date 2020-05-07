class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/borkdude/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "d53938633967c1a9494f19bf445f44f5bf75d0781d81e11a0c25c3b01821dd59"
  else
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "702065727a004789ea96d5926783ea2bfaa107ce7ae2dca2d4988454abf82e09"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
