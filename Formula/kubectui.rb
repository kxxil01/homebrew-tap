class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.23/kubectui-v1.1.23-aarch64-apple-darwin.tar.gz"
      sha256 "96e9775217a29a97e45b17537743b1803be4c76e2220a7779f7865d172dd0a9a"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.23/kubectui-v1.1.23-x86_64-apple-darwin.tar.gz"
      sha256 "4058d370cd0c1394241b9a174a7fb833d329bc5e747f44c6875b2c67328281ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.23/kubectui-v1.1.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e746f16cedcd93941e6c98092042625d15907db494cd26a387d0a713bb9870ab"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.23/kubectui-v1.1.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8590cc66d887c3600d3cbb4c1b7771f27c617bfbcd0ffd3466b45173658dbe5b"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
