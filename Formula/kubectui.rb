class Kubectui < Formula
  desc "Keyboard-first terminal UI for Kubernetes operations"
  homepage "https://github.com/kxxil01/Kubectui"
  version "1.0.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0e52e27675217ffa65465b86483faf589e2c9a6f5ae4edfd4bb49f0d277e7c14"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4ab34a93753479cfb9423715476b4d810f2fda095717f8d6acc478bf6dee6d9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a703f816bfde81fba5c1acd4109e07562b03fb3899b70941b58dfe27cc3f5c5a"
    else
      url "https://github.com/kxxil01/Kubectui/releases/download/v#{version}/kubectui-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecbd40cf48c26ace85a1e1deb7cef4bdd227a8175602bfe5596c6c5d0f231797"
    end
  end

  def install
    bin.install "kubectui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectui --version")
  end
end
