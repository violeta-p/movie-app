require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    subject do
      Movie.new(title: 'title', description: 'desc',
                duration: '1h 30mins', release_date: Date.current,
                cast: 'very cool cast')
    end

    it { expect(subject).to be_valid }
    it { expect(subject).to validate_presence_of(:title) }
    it { expect(subject).to validate_presence_of(:description) }
    it { expect(subject).to validate_presence_of(:duration) }
    it { expect(subject).to validate_presence_of(:release_date) }
    it { expect(subject).to validate_presence_of(:cast) }
  end
end
