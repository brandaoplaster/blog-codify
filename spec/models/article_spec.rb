require "rails_helper"

RSpec.describe Article, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:serie).optional }
  it { is_expected.to have_many(:hastags) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to allow_value(false).for(:published) }
  it { is_expected.to have_rich_text(:content) }
end
