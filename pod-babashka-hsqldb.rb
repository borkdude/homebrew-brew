class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/babashka/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "71cb7abaddb71fbfd9a98a2d5eef67dd5f8f9c91b3558945b8519a41976a5852"
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "27042952e720025479274757dcabb8978db8463fa4101390333694e9732445b0"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
