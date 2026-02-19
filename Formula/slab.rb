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
    sha256 "3d5ba507bed7ecd37c1eeac32a1da07df93edf322c725809a7a11672215581a8"
  end

  on_linux do
    url "https://github.com/FeiyouG/skill-lab/releases/download/v0.0.2/slab-linux-x64.tar.gz"
    sha256 "ad4728cac4401f44e6e1d84025d8ef0048948549afb9fc4d8f17c36cb7a3034b"
  end

  def install
    bin.install "slab"
  end
end
