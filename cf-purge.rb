class CfPurge < Formula
    desc "Purge CloudFormation stacks that match a glob pattern"
    homepage "https://github.com/dzhuneyt/cf-purge"
    url "https://api.github.com/repos/Dzhuneyt/cf-purge/tarball/0.0.7"
    sha256 "9b8fb6cbb0006bdb973fa7315130d56919507f743a042e0e580db99a9d5b747d"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/cf-purge", "--version"
    end
  end