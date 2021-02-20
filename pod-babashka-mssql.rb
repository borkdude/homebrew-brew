class PodBabashkaMssql < Formula

  desc "Babashka pod for MSSQL."
  homepage "https://github.com/babashka/babashka-sql-pods"
  version "0.0.2"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.2/pod-babashka-mssql-0.0.2-linux-amd64.zip"
    sha256 "deb6c29af86cd34dcb45a11db2e291878ef07ba742f8745ec59bdac5cbd6bbc9"
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.2/pod-babashka-mssql-0.0.2-macos-amd64.zip"
    sha256 "e2b3f41a8fff6e8067975929fb97a5f1a08d1529ca3bddb2c51231460e7a7453"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-mssql"

  end

end
