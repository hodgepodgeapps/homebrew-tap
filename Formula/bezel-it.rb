class BezelIt < Formula
  desc "Add bezels to Apple device screenshots"
  homepage "https://www.hodgepodgeapps.com/bezel-it/"
  url "https://github.com/hodgepodgeapps/bezel-it-cli/releases/download/v0.3/bezelit-macos.zip"
  sha256 "83ed6dffb8c601c3651361a3847827d1dc73ec870088937bcc0ab610868ef471"
  version "0.3"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "BezelItCommandLine" => "bezelit"
  end

  def caveats
    <<~EOS
      The Bezel It CLI requires the Bezel It macOS app to be installed.
      Download it from the Mac App Store:
        https://apps.apple.com/us/app/bezel-it-frame-screenshots/id6444053674
    EOS
  end

  test do
    assert_match "bezelit", shell_output("#{bin}/bezelit --help")
  end
end
