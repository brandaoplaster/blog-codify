require "rails_helper"

RSpec.describe Hastag, type: :model do
  it { is_expected.to belong_to(:tagable) }
  it { is_expected.to belong_to(:tag) }
end
