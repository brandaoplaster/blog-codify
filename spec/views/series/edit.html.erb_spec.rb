require 'rails_helper'

RSpec.describe "series/edit", type: :view do
  before(:each) do
    @serie = assign(:serie, Serie.create!())
  end

  it "renders the edit serie form" do
    render

    assert_select "form[action=?][method=?]", serie_path(@serie), "post" do
    end
  end
end
