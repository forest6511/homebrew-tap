class Godl < Formula
  desc "Fast, concurrent file downloader for Go"
  homepage "https://github.com/forest6511/godl"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/forest6511/godl/releases/download/v0.9.0/godl-darwin-amd64"
      sha256 "4db904fdd130c7daddf716cb5fab277ab5a42da2c8537859ae789fd64b42eaef"
    else
      url "https://github.com/forest6511/godl/releases/download/v0.9.0/godl-darwin-arm64"
      sha256 "f7452b74fe7a45801daecc40d6b8427c612fafc8ef0b99f24959ced415bdbb33"
    end
  end

  on_linux do
    url "https://github.com/forest6511/godl/releases/download/v0.9.0/godl-linux-amd64"
    sha256 "291a1d3971aaf0ba3c78e8c60645d806dc4b613448f43b71f09d35e417cdabfa"
  end

  def install
    bin.install "godl-darwin-amd64" => "godl" if OS.mac? && Hardware::CPU.intel?
    bin.install "godl-darwin-arm64" => "godl" if OS.mac? && Hardware::CPU.arm?
    bin.install "godl-linux-amd64" => "godl" if OS.linux?
  end

  test do
    system "#{bin}/godl", "--version"
  end
end
