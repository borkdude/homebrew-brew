class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/babashka/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "863a5758dc26d448580c32c64d2dbc1b368dc8227cc906e82c26c73252679393"
  else
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "225c941422c37b477f680ecad59a4bab5c7fb908f5ffc7cdf1794b3806c73978"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
