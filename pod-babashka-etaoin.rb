class PodBabashkaEtaoin < Formula

  desc "Babashka pod for Etaoin."
  homepage "https://github.com/babashka/pod-babashka-etaoin"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/pod-babashka-etaoin/releases/download/v0.0.1-SNAPSHOT/pod-babashka-etaoin-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "dda6aa43b051dcbca9fc2c1f02be8a749c41af364a761bed3dda0e589217f905"
  else
    url "https://github.com/babashka/pod-babashka-etaoin/releases/download/v0.0.1-SNAPSHOT/pod-babashka-etaoin-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "f1ab80f35afb43159bb647041dadd92eba4ea7cebc7b6657ab794a57a5dde9ab"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-etaoin"

  end

end
