require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    subject { build(:movie) }

    it { expect(subject).to be_valid }
    it { expect(subject).to validate_presence_of(:title) }
    it { expect(subject).to validate_presence_of(:description) }
    it { expect(subject).to validate_presence_of(:duration) }
    it { expect(subject).to validate_presence_of(:release_date) }
    it { expect(subject).to validate_presence_of(:cast) }
  end
end
