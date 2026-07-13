class PiBunUpdater < Formula
  desc "Install and manage the official compiled Bun build of Pi"
  homepage "https://github.com/Nabsku/pi-bun-updater"
  url "https://github.com/Nabsku/pi-bun-updater/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "1b226ac9af458d2d8cc78058f7dc6ee393f9963591e6c691fe93582bc69f8635"
  license :cannot_represent
  revision 1

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"pi-bun-update", ldflags: "-s -w")
  end

  test do
    assert_match "Usage: pi-bun-update", shell_output("#{bin}/pi-bun-update --help 2>&1")
  end
end
