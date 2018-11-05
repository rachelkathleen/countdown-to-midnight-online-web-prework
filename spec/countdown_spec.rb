require_relative './spec_helper'
require 'benchmark'

describe 'LOOPS' do

  describe '#countdown' do
    let(:countdown_output) { "10 SECOND(S)!\9 SECOND(S)!\8 SECOND(S)!\7 SECOND(S)!\6 SECOND(S)!\5 SECOND(S)!\4 SECOND(S)!\3 SECOND(S)!\2 SECOND(S)!\1 SECOND(S)!\n" }

    it "outputs '<n> SECOND(S)!' string to STDOUT for each count" do
      expect { countdown(10) }.to output(countdown_output).to_stdout
    end

    it 'returns HAPPY NEW YEAR!' do
      expect(countdown(12)).to eq "HAPPY NEW YEAR!"
    end
  end

  describe '#countdown_with_sleep' do
    it 'should take at least 5 seconds to execute' do
      runtime = Benchmark.measure { countdown_with_sleep(5) }
      expect(runtime.real.to_i >= 5).to be true
    end
  end

end
