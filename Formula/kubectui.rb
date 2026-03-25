class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  version "1.0.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1880084069f94360f5fb34e64a399f8ab933b61ce02ed895be2d0853f452351f"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0218a3457577dffe3638ac78ec7a23287633d404a398b1679de49ea92b936aec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc6e0a8dcf8349263de5983c6e88e0ed1501a1f0c49c1513fffa62818d792551"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3750d2a8d17695d906fa1e652b9db86527e7b2100f64f797587f1028e98ed734"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
