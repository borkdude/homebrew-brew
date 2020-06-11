class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/babashka/pod-babashka-hsqldb"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1/pod-babashka-hsqldb-0.0.1-linux-amd64.zip"
    sha256 "1645866bf89033448081e013d1705d4f089c41867efaa23ee0c4bce0ea551296"
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1/pod-babashka-hsqldb-0.0.1-macos-amd64.zip"
    sha256 "623dfc1f1b5ef3587037a2a82a1cc24b7d60a9da1d81ec40ec01ad857da4b63f"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
