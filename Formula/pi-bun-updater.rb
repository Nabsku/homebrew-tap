class PiBunUpdater < Formula
  desc "Install and manage the official compiled Bun build of Pi"
  homepage "https://github.com/Nabsku/pi-bun-updater"
  url "https://github.com/Nabsku/pi-bun-updater/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "1b226ac9af458d2d8cc78058f7dc6ee393f9963591e6c691fe93582bc69f8635"
  license :cannot_represent
  revision 1

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
