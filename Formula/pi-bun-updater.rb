class PiBunUpdater < Formula
  desc "Install and manage the official compiled Bun build of Pi"
  homepage "https://github.com/Nabsku/pi-bun-updater"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Nabsku/pi-bun-updater/releases/download/v0.0.2/pi-bun-updater_0.0.2_darwin_arm64.tar.gz"
      sha256 "3e32e84c9a396f9b0787ecd04c7a7b7cf6caa25e5ea750f2394be47ee245177b"
    else
      url "https://github.com/Nabsku/pi-bun-updater/releases/download/v0.0.2/pi-bun-updater_0.0.2_darwin_amd64.tar.gz"
      sha256 "ca61ca81db1806245fbfe944046c0843655f828d5b83eecd888923e8916619e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Nabsku/pi-bun-updater/releases/download/v0.0.2/pi-bun-updater_0.0.2_linux_arm64.tar.gz"
      sha256 "aad9de47855c3adc8d2c010aa1fef624a3b216232d292448c41a49addb6ad301"
    else
      url "https://github.com/Nabsku/pi-bun-updater/releases/download/v0.0.2/pi-bun-updater_0.0.2_linux_amd64.tar.gz"
      sha256 "16ea1e28ab6109f311b7b38c5a0c9c2d53e3092fea90712feda1d6263b60a160"
    end
  end

  def install
    bin.install "pi-bun-update"
  end

  test do
    assert_match "Usage: pi-bun-update", shell_output("#{bin}/pi-bun-update --help 2>&1")
  end
end
