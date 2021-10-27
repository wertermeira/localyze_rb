# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PositionSubarray do
  let(:challenge) { described_class.new(arr).call }

  describe '.call' do
    context 'when result 2,5' do
      let(:arr) { [2, -4, 6, 8, -10, 100, -6, 5] }

      it { expect(challenge).to eq('2,5') }
    end

    context 'when result 0,3' do
      let(:arr) { [1, 2, -1, 3, -3, 2, -6] }

      it { expect(challenge).to eq('0,3') }
    end
  end
end
