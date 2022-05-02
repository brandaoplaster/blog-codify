require 'rails_helper'

RSpec.describe "series/show", type: :view do
  before(:each) do
    @serie = assign(:serie, Serie.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
