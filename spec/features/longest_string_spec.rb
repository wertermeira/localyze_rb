# frozen_string_literal: true

require 'spec_helper'

RSpec.describe LongestString do
  let(:challenge) { described_class.new(str).call }

  describe '.call' do
    context 'when word -> Pressuuuuuure' do
      let(:str) { 'Pressuuuuuure' }

      it { expect(challenge).to eq('uuuuuu') }
    end

    context 'when word -> Pressuure' do
      let(:str) { 'Pressuure' }

      it { expect(challenge).to eq('ss') }
    end

    context 'when word -> A hot  dog' do
      let(:str) { 'A hot  dog' }

      it { expect(challenge).to eq('  ') }
    end

    context 'when word -> Boat' do
      let(:str) { 'Boat' }

      it { expect(challenge).to eq('B') }
    end
  end
end
