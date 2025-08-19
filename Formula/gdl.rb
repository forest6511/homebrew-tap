class Gdl < Formula
  desc "Fast, concurrent file downloader for Go"
  homepage "https://github.com/forest6511/gdl"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/forest6511/gdl/releases/download/v1.0.0/gdl-darwin-amd64"
      sha256 "ecac5e91f27f90ac55a04286a79dbe1237fcdfc4b3be2b5521552ad1198106ce"
    else
      url "https://github.com/forest6511/gdl/releases/download/v1.0.0/gdl-darwin-arm64"
      sha256 "682858dbea47bf4675384febd6747f1e90b5b7648148de833a46bdda84665c75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forest6511/gdl/releases/download/v1.0.0/gdl-linux-amd64"
      sha256 "d9ee690f37a0e74eadd83b773540bc1bbc0dc96fbcc57eb2028e60f8028f123d"
    else
      url "https://github.com/forest6511/gdl/releases/download/v1.0.0/gdl-linux-arm64"  
      sha256 "49c80c4897d7e707e0457c9c8577ee8ff335b7969fc331824d6bda6a86938f1a"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "gdl-darwin-amd64" => "gdl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "gdl-darwin-arm64" => "gdl"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "gdl-linux-amd64" => "gdl"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "gdl-linux-arm64" => "gdl"
    end
  end

  test do
    system "#{bin}/gdl", "--version"
  end
end