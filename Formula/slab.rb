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
    sha256 "be2a77514d6dbcbce741d4688124cdedaa3401aea315578af4ead25b17503ef4"
  end

  on_linux do
    url "https://github.com/FeiyouG/skill-lab/releases/download/v0.0.2/slab-linux-x64.tar.gz"
    sha256 "4d8d0a017a5d681a0247e0ec79decb6350900f9a8fa4732ed73aec44bc7f9909"
  end

  def install
    bin.install "slab"
  end
end
