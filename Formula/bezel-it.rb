class BezelIt < Formula
  desc "Add bezels to Apple device screenshots and videos"
  homepage "https://www.hodgepodgeapps.com/bezel-it/"
  url "https://github.com/hodgepodgeapps/bezel-it-cli/releases/download/v2.6.0/bezelit-macos.zip"
  sha256 "ff519d6aab126260171afbd31b89a05a0de2db68bf6300e8f4fcbb75a63537b6"
  version "2.6.0"

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
