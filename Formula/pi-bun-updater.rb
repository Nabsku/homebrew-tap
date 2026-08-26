class PiBunUpdater < Formula
  desc "Install and manage the official compiled Bun build of Pi"
  homepage "https://github.com/Nabsku/pi-bun-updater"
  url "https://github.com/Nabsku/pi-bun-updater/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f8967302c696a5f1a426fbd1d9289cfe3c6d2d70b7ebc60fc1dc830e7e1ec458"
  license :cannot_represent

  bottle do
    root_url "https://github.com/Nabsku/homebrew-tap/releases/download/pi-bun-updater-0.0.2_1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "7c6f41a47efe59ad97ffbf0a03c14d00fd6639c5ca0a2af09a8f21c4e6affc1a"
    sha256 cellar: :any,                 x86_64_linux: "2470438e555970a153be378e7c3383983d5d153314162dbe406182f41dd9df89"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"pi-bun-update", ldflags: "-s -w")
  end

  test do
    assert_match "Usage: pi-bun-update", shell_output("#{bin}/pi-bun-update --help 2>&1")
  end
end
