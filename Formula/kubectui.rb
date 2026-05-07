class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.21/kubectui-v1.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "06ce665b3c0920e7d5f0560c5ee8bef36177f40ff3a7b22a6390878e3a3e6db9"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.21/kubectui-v1.1.21-x86_64-apple-darwin.tar.gz"
      sha256 "b90f4654fc92697323d63475b6eb7c6b00c3dd00dc7c38c308809fd6c8d5f8e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.21/kubectui-v1.1.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef2ab4fd5e1666a104b78bb7bb0d2e43b9dc71c1ec025c2efbec1ebdfa0f76bb"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.21/kubectui-v1.1.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54ebb9a3e664c38f70765568419716400dbfdd1306a04a42671b1a2fa0685e40"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
