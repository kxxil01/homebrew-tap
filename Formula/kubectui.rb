class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  version "1.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "814e0c083e2ad4cb9c04999d89cbfdbe90fe0c578fcafc451553e37ea4a2422b"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2d9743d34847a89422163f0fe8d0ad3ff29ecff39ff0613cb17445b59b469dcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11115c700e2b7cada0cb13e2dfe241df48b8ff95ff85b1d134afbfd8f014a5b6"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6d7e649e280b2368b049fa4af605cc2a3ba33a43a89a4a001d9cea7bed06339"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
