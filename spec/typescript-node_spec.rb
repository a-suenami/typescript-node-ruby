require "typescript-node"

module TypeScript
  module Node
    describe "#compile_file" do
      subject do
        hello_ts = File.expand_path("data/hello.ts", File.dirname(__FILE__))
        Node.compile_file(hello_ts)
      end

      describe "#exit_status" do
        it { expect(subject.exit_status).to eq 0 }
      end

      it { expect(subject).to be_success }

      describe "#js" do
        it { expect(subject.js).to eq "console.log(\"Hello TypeScript\");\n" }
      end

      describe "#stdout" do
        it { expect(subject.stdout).to eq "" }
      end

      describe "#stderr" do
        it { expect(subject.stderr).to eq "" }
      end
    end
  end
end
