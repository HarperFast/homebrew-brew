class OpenshiftPreflight < Formula
  desc 'RedHat openshift-preflight CLI tool'
  homepage 'https://github.com/redhat-openshift-ecosystem/openshift-preflight'
  version '1.14.1'
  license 'Apache-2.0'

  on_linux do
    on_arm do
      url "https://github.com/redhat-openshift-ecosystem/openshift-preflight/releases/download/#{version}/preflight-linux-arm64"
      sha256 'cd29e198bd54cec46b219fc151b1b9c8fe71c33e7fdab7814862736a309a2a7c'
    end
    on_intel do
      url "https://github.com/redhat-openshift-ecosystem/openshift-preflight/releases/download/#{version}/preflight-linux-amd64"
      sha256 'cd1b6143fb511433d07f29075b4840b712933d7d4d4fc6353b079b59c1cb06cd'
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/redhat-openshift-ecosystem/openshift-preflight/releases/download/#{version}/preflight-darwin-arm64"
      sha256 '216b5f8846b6d3292bb798765a63f935627c36285fcba649ddab535973e70914'
    end
    on_intel do
      url "https://github.com/redhat-openshift-ecosystem/openshift-preflight/releases/download/#{version}/preflight-darwin-amd64"
      sha256 '7e03a564cfb1697a6a3179c5d2f6f0a861a14bf4443f553d946f92ac06376b98'
    end
  end

  def install
    binary = self.class.url.split('/').last
    bin.install binary => 'preflight'
  end
end
