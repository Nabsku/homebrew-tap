class PiBunUpdater < Formula
  desc "Install and manage the official compiled Bun build of Pi"
  homepage "https://github.com/Nabsku/pi-bun-updater"
  url "https://github.com/Nabsku/pi-bun-updater/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f8967302c696a5f1a426fbd1d9289cfe3c6d2d70b7ebc60fc1dc830e7e1ec458"
  license :cannot_represent

  bottle do
    root_url "https://github.com/Nabsku/homebrew-tap/releases/download/pi-bun-updater-0.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e439bf3a2d1aa832aabdd392d8407b2de48b1c0bf294f1ad700a8f0340f4524f"
    sha256 cellar: :any,                 x86_64_linux: "2db3397287185800515b1a31b0b1100469eef4f6a5ab6892c33be0e4ff2864fd"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"pi-bun-update", ldflags: "-s -w")
  end

  test do
    assert_match "Usage: pi-bun-update", shell_output("#{bin}/pi-bun-update --help 2>&1")
  end
end
