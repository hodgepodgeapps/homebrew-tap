class BezelIt < Formula
  desc "Add bezels to Apple device screenshots"
  homepage "https://www.hodgepodgeapps.com/bezel-it/"
  url "https://github.com/hodgepodgeapps/bezel-it-cli/releases/download/v0.1/bezelit-macos.zip"
  sha256 "2ae18f8f1d82ea287d6c0e6a891aa15aa956a899ef220c3a20dfcd1f896f1e47"
  version "0.1"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    binary_path = Dir["**/BezelCommandLine"].first
    raise "bezelit binary not found in archive" if binary_path.nil?

    bin.install binary_path => "bezelit"
  end

  test do
    assert_match "bezelit", shell_output("#{bin}/bezelit --help")
  end
end
