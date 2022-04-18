require "rails_helper"

RSpec.describe Serie, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:hastags) }

  it { is_expected.to validate_presence_of(:title) }
end
