class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.22/kubectui-v1.1.22-aarch64-apple-darwin.tar.gz"
      sha256 "faca626aac98358a9388b675a46fe34bcbf9ccbf11e3c7e9d8ebf316978edea8"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.22/kubectui-v1.1.22-x86_64-apple-darwin.tar.gz"
      sha256 "a875700fcca3d1891bfde88fa75c635a413edd99592c746204a63d32bc1b506b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.22/kubectui-v1.1.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ceb2e660b95b5a3e7855b1be435682b213809be8fa98618b2fef32ac5bfe366b"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v1.1.22/kubectui-v1.1.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d59d1f9929f0bdd4a2420dd7fc6352fa6a2ece0267fa841c9a2fbb0fd5f2ae92"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
