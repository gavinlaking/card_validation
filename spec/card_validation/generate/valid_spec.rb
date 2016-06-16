require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateValid do
    describe '#generate_valid' do
      subject { CardValidation::Luhn.new(described_class.valid) }

      it 'creates a valid card' do
        expect(subject).to be_valid
      end
    end
  end
end
