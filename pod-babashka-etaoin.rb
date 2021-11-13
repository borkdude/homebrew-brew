class PodBabashkaEtaoin < Formula

  desc "Babashka pod for Etaoin."
  homepage "https://github.com/babashka/pod-babashka-etaoin"
  version "0.0.3"

  if OS.linux?
    url "https://github.com/babashka/pod-babashka-etaoin/releases/download/v0.0.3/pod-babashka-etaoin-0.0.3-linux-amd64.zip"
    sha256 ""
  else
    url "https://github.com/babashka/pod-babashka-etaoin/releases/download/v0.0.3/pod-babashka-etaoin-0.0.3-macos-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "pod-babashka-etaoin"

  end

end
