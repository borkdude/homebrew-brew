class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/borkdude/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "4abfa5ec10d2fa9724934be1206e934352b296bbe55eb3cedec943b0af21f2aa"
  else
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "cab0d47e72ed23eddbf2474ec03eced496340633902b55ab7bd103b869e49cda"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
