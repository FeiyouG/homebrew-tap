class Slab < Formula
  desc "Skill Lab CLI"
  homepage "https://github.com/FeiyouG/skill-lab"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      odie "slab currently ships macOS binaries for Apple Silicon only"
    end
    url "https://github.com/FeiyouG/skill-lab/releases/download/v0.0.2/slab-macos-arm64.tar.gz"
    sha256 "6006d679a6c6c9fbc75dec4734a86f1ac9723178d96e949273f1390ba37b3811"
  end

  on_linux do
    url "https://github.com/FeiyouG/skill-lab/releases/download/v0.0.2/slab-linux-x64.tar.gz"
    sha256 "c8ad03661052588eec2be8c67b60aebb1e3085745d6fedcb328e5d85b49c94db"
  end

  def install
    bin.install "slab"
  end
end
