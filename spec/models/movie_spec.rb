require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    subject { build(:movie) }

    it { expect(subject).to be_valid }

    it 'not valid without title' do
      subject.title = ''
      expect(subject).to_not be_valid
    end

    it 'not valid without description' do
      subject.description = ''
      expect(subject).to_not be_valid
    end

    it 'not valid without duration' do
      subject.duration = ''
      expect(subject).to_not be_valid
    end

    it 'not valid without release_date' do
      subject.release_date = ''
      expect(subject).to_not be_valid
    end

    it 'not valid without cast' do
      subject.cast = ''
      expect(subject).to_not be_valid
    end
  end
end
