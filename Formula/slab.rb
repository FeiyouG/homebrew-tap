class Slab < Formula
  desc "Skill Lab CLI"
  homepage "https://github.com/FeiyouG/skill-lab"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      odie "slab currently ships macOS binaries for Apple Silicon only"
    end
    url "https://github.com/FeiyouG/skill-lab/releases/download/v0.0.1/slab-macos-arm64.tar.gz"
    sha256 "4b78224860670c92b9117fb47e0e06207be5f72f0cc0bb2b5f8f351a4232c862"
  end

  on_linux do
    url "https://github.com/FeiyouG/skill-lab/releases/download/v0.0.1/slab-linux-x64.tar.gz"
    sha256 "a1a0475be36f5566b3d796ff42f860acc75dde5d52b8fef14c9435aa0174ced7"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slab"
  end
end
