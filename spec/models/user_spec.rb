require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    subject do
      User.new(email: 'user@test.com', password: 'password', password_confirmation: 'password')
    end

    it { expect(subject).to be_valid }
    it { expect(subject).to validate_presence_of(:email) }
    it { expect(subject).to validate_presence_of(:password) }
  end
end
