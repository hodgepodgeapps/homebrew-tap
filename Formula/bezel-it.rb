class BezelIt < Formula
  desc "Add bezels to Apple device screenshots"
  homepage "https://www.hodgepodgeapps.com/bezel-it/"
  url "file:///Users/cevanish/Developer/Bezel/dist/BezelCommandLine-macos.zip"
  sha256 "e0abd5c5ed91e079df0e96fba788eeb6aae75b7c3086546a82d4d7787f721cf0"
  version "2.4"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "BezelCommandLine-macos/BezelCommandLine" => "bezelIt"
  end

  test do
    assert_match "bezelIt", shell_output("#{bin}/bezelIt --help")
  end
end
