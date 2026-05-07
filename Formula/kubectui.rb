class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.20/kubectui-v1.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "8ecec9c115270cf73495b1348e2f990f9fe778a71f9e839ac1999d21256b2f78"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.20/kubectui-v1.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "76f39a98f6e4a09a2a6e25b43229d11f007ea94c579c5dafeb72621905808778"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.20/kubectui-v1.1.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "906e2dec4514ce1364ca8ef037b8da8aef2b01ba131970c6595a198ce384ebc6"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.20/kubectui-v1.1.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64894ca6553b22fbac5e9a7c0078b005cd891c04e536ee332dbca8a295d97bb2"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
