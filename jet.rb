class Jet < Formula

  desc "Transform JSON into EDN into Transit."
  homepage "https://github.com/borkdude/jet"
  version "0.0.6"

  if OS.linux?
    url "https://github.com/borkdude/jet/releases/download/v0.0.6/jet-0.0.6-linux-amd64.zip"
    sha256 "bb59ca61054f5a922089e9a90f56f991ec73d4ee57b9ad8667efb944109f531d"
  else
    url "https://github.com/borkdude/jet/releases/download/v0.0.6/jet-0.0.6-macos-amd64.zip"
    sha256 "d3c0f81646ec8e3cc2fc2894432afb81987cee98dbc664342d453979fa1f77cd"
  end

  bottle :unneeded

  def install
    bin.install "jet"
  end

end
