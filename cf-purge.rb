class CfPurge < Formula
    desc "Purge CloudFormation stacks that match a glob pattern"
    homepage "https://github.com/dzhuneyt/cf-purge"
    url "https://api.github.com/repos/Dzhuneyt/cf-purge/tarball/0.0.30"
    sha256 "b4b18f062efd0147812db85fa116c85f0b0ed87c46dc943915a3b5b27f5f4f5d"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/cf-purge", "--version"
    end
  end