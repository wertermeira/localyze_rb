# frozen_string_literal: true

require 'spec_helper'

RSpec.describe StringLengthLastWord do
  let(:error_message) { 'String cannot be less than 1 or greater than 104 characters' }
  let(:challenge) { described_class.new(str).call }

  describe '.call' do
    context "when phrase ' fly me   to   the moon   '" do
      let(:str) { ' fly me   to   the moon   ' }
      it { expect(challenge).to eq(4) }
    end

    context "when phrase 'Hello World'" do
      let(:str) { 'Hello World' }
      it { expect(challenge).to eq(5) }
    end

    context "when phrase 'helloween is a great band'" do
      let(:str) { 'helloween is a great band' }
      it { expect(challenge).to eq(4) }
    end

    context "when phrase 'luffy is still joyboy'" do
      let(:str) { 'luffy is still joyboy' }
      it { expect(challenge).to eq(6) }
    end

    context 'when raise empty string' do
      let(:str) { '' }
      it { expect { challenge }.to raise_error(error_message) }
    end

    context 'when raise string greater than 104 characters' do
      let(:str) do
        'is simply dummy text of the printing and typesetting industry. '\
        "Lorem Ipsum has been the industry's stanAa 12  "
      end
      it { expect { challenge }.to raise_error(error_message) }
    end
  end
end
