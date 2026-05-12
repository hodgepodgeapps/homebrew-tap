class BezelIt < Formula
  desc "Add bezels to Apple device screenshots"
  homepage "https://www.hodgepodgeapps.com/bezel-it/"
  url "https://github.com/hodgepodgeapps/bezel-it-cli/releases/download/v0.2/bezelit-macos.zip"
  sha256 "0d0ded87af1d6b8a8ea867841b16f9e11da22ec11f78c677e73293c0f84a0fcf"
  version "0.2"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"BezelItCommandLine" => "bezelit"
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
