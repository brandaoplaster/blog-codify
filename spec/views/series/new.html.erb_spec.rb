require 'rails_helper'

RSpec.describe "series/new", type: :view do
  before(:each) do
    assign(:serie, Serie.new())
  end

  it "renders new serie form" do
    render

    assert_select "form[action=?][method=?]", series_path, "post" do
    end
  end
end
