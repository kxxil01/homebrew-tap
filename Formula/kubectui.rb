class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  version "1.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d6e5fb5f82c7379d026bacd94391862be13d7eb88fd761a528ac7de7069607a7"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "073fc71ab408c7c4f386f215c87e8020135c53597f4982f6991c386cb6a54ae3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b9e0d105dc3ae468ee6d10bda1fed9df6c0f55d1359277b4eab961f49fa3e51"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1f91921b12be6a47d349c53260609d3bd197256a284f9a425a5a1a71d17815d"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
