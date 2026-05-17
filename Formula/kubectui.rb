class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.24/kubectui-v1.1.24-aarch64-apple-darwin.tar.gz"
      sha256 "ddb95010213a9ca100c237ee54ff4eff47467cb43479d1b455c8d7d6fe35f4be"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.24/kubectui-v1.1.24-x86_64-apple-darwin.tar.gz"
      sha256 "e1f024c91baccc9e116c0939e37cd6c14cfdc92ad9910c1ac48bf2ca68f8ed7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.24/kubectui-v1.1.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48b1766bc8b0b04262b61edd37d94a6611189e881df55aa62d025d8ad46dd9f6"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.24/kubectui-v1.1.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b72eecfc6c71afec06e644a5144ecaf6af2f7c53497ed7e67c604afcb5f46ceb"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
