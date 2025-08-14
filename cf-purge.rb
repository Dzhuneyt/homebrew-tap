class CfPurge < Formula
    desc "Purge CloudFormation stacks that match a glob pattern"
    homepage "https://github.com/dzhuneyt/cf-purge"
    url "https://api.github.com/repos/Dzhuneyt/cf-purge/tarball/0.0.30"
    sha256 "b4b18f062efd0147812db85fa116c85f0b0ed87c46dc943915a3b5b27f5f4f5d"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      cd "core" do
        system "go", "build", *std_go_args(output: bin/"cf-purge", ldflags: "-s -w")
      end
    end
  
    test do
      assert_match "cf-purge", shell_output("#{bin}/cf-purge --help")
    end
  end