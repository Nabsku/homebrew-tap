class PiBunUpdater < Formula
  desc "Install and manage the official compiled Bun build of Pi"
  homepage "https://github.com/Nabsku/pi-bun-updater"
  url "https://github.com/Nabsku/pi-bun-updater/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f8967302c696a5f1a426fbd1d9289cfe3c6d2d70b7ebc60fc1dc830e7e1ec458"
  license :cannot_represent

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"pi-bun-update", ldflags: "-s -w")
  end

  test do
    assert_match "Usage: pi-bun-update", shell_output("#{bin}/pi-bun-update --help 2>&1")
  end
end
