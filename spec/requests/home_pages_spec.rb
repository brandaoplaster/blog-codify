require "rails_helper"

RSpec.describe "/home_pages", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      HomePage.create! valid_attributes
      get home_pages_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      home_page = HomePage.create! valid_attributes
      get home_page_url(home_page)
      expect(response).to be_successful
    end
  end
end
