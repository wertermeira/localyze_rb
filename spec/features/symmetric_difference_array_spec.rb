# frozen_string_literal: true

require 'spec_helper'

RSpec.describe SymmetricDifferenceArray do
  let(:challenge) { described_class.new(arr_n, arr_m).call }

  describe '.call' do
    context 'when result successed' do
      let(:arr_n) { [1, 2, 3] }
      let(:arr_m) { [3, 4] }

      it { expect(challenge).to eq([1, 2, 4]) }
    end

    context 'when raise integer in array greater than 100' do
      let(:error_message) { 'Integer in array cannot be greater than 100' }
      let(:arr_n) { [1, 2, 3] }
      let(:arr_m) { [3, 4, 101] }

      it { expect { challenge }.to raise_error(error_message) }
    end
  end
end
