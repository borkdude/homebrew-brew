class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.11"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.11/jet-0.0.11-linux-amd64.zip"
    sha256 "b5364dff1eb828601200fd7c76151e64c04c9d0813b18e2c5f93bcc2a8c174eb"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.11/jet-0.0.11-macos-amd64.zip"
    sha256 "a409abbcbec6c55fc8375f04401358283402bc05b8906edadc82b8ce922c2f34"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
