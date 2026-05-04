class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  version "1.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2798d0c02bac1b1c3dbe13684eaa6a5ea85ed13e9b2c3bce24c8a60ef07b3fd6"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "02526dc4cc2dee319f1624f07af7172174834bca8482c6ca6a604b291885fa9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d082a9793d0aeff40d6ed7a0c508b94d35a3995ee4c30830e04605e935a03551"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af3fe02c42f76fe70df72aab26e604e20bdebbbef9fbb2e027d2cb1c606014b3"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
