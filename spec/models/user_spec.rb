require "rails_helper"

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:articles) }
  it { is_expected.to have_many(:serie) }

  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_length_of(:bio).is_at_most(500) }

  describe "validations" do
    subject { FactoryBot.build(:user) }
    it { is_expected.to validate_uniqueness_of(:username).case_insensitive }
  end
end
