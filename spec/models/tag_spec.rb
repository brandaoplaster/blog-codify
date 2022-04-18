require "rails_helper"

RSpec.describe Tag, type: :model do
  it { is_expected.to have_many(:hastags) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to define_enum_for(:status).with_values({ activated: 1, disabled: 0 }) }

  describe "validation" do
    subject { FactoryBot.build(:tag) }
    it { is_expected.to validate_uniqueness_of(:title).case_insensitive }
  end
end
