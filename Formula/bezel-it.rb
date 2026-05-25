class BezelIt < Formula
  desc "Add bezels to Apple device screenshots and videos"
  homepage "https://www.hodgepodgeapps.com/bezel-it/"
  url "https://github.com/hodgepodgeapps/bezel-it-cli/releases/download/v2.5.40/bezelit-macos.zip"
  sha256 "953160c6523c4278dd90d7b421d06e6fdbc28eb94ce20fb39fb843f46b18c3bf"
  version "2.5.40"

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
